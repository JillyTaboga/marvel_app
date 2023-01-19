import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../domain/use_cases/get_characters.dart';
import '../../domain/use_cases/get_gyro_coords.dart';
import 'detail_screen.dart';

final searchProvider = StateProvider<String>((ref) {
  return '';
});

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(viewportFraction: 0.8);
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SearchField(),
          ),
          Expanded(
            child: ref
                .watch(
                  getCharactersProvider(0),
                )
                .when(
                  data: (data) {
                    final total = data.data.total;
                    if (total == 0) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Nenhum personagem encontrado',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 3,
                                  offset: Offset(0, 0),
                                ),
                                Shadow(
                                  blurRadius: 30,
                                  color: Colors.black,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        return Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: PageView.builder(
                                  controller: pageController,
                                  scrollDirection: Axis.horizontal,
                                  pageSnapping: true,
                                  padEnds: true,
                                  itemCount: total,
                                  itemBuilder: (context, index) {
                                    final currentPage = index ~/ 10;
                                    return Center(
                                      child: Container(
                                        width: constraints.maxWidth - 100,
                                        height: constraints.maxHeight * 0.55,
                                        margin: const EdgeInsets.all(10),
                                        child: HeroCard(
                                          currentPage: currentPage,
                                          index: index,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Text(data.copyright),
                          ],
                        );
                      },
                    );
                  },
                  error: (error, s) => Center(child: Text(error.toString())),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
          ),
        ],
      ),
    );
  }
}

class SearchField extends HookConsumerWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final text = useState('');
    final controller = useTextEditingController();
    return TextField(
      onChanged: ((value) {
        ref.read(searchProvider.notifier).state = value;
        text.value = value;
      }),
      controller: controller,
      textCapitalization: TextCapitalization.words,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        fillColor: Colors.white12,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        suffixIcon: text.value.isEmpty
            ? const Icon(Icons.search)
            : IconButton(
                onPressed: () {
                  text.value = '';
                  controller.clear();
                  ref.read(searchProvider.notifier).state = '';
                  FocusScope.of(context).unfocus();
                },
                icon: const Icon(
                  Icons.clear,
                ),
              ),
      ),
    );
  }
}

class HeroCard extends HookConsumerWidget {
  const HeroCard({
    super.key,
    required this.currentPage,
    required this.index,
  });

  final int currentPage;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemResult = ref.watch(
      getCharactersProvider(currentPage),
    );
    final coords = ref.watch(gyroCoords);
    return coords.when(
      data: (gyro) {
        const ratio = 3000;
        return Transform(
          transform: Matrix4(
            1,
            0,
            0,
            -gyro.y / ratio,
            0,
            1,
            0,
            gyro.x / ratio,
            0,
            0,
            1,
            gyro.z / ratio,
            0,
            0,
            0,
            1,
          )..setEntry(3, 2, 0.002),
          alignment: FractionalOffset.center,
          child: Container(
            margin: const EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                strokeAlign: StrokeAlign.outside,
              ),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 0.2,
                  offset: Offset(gyro.y * 20, -gyro.x * 20),
                  color: Colors.black45,
                ),
              ],
            ),
            child: itemResult.when(
              data: (pageResult) {
                final pageIndex = index - (currentPage * 10);
                final character = pageResult.data.results[pageIndex];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          character: character,
                        ),
                      ),
                    );
                  },
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (character.thumbnail != null &&
                          character.thumbnail!.imageUrl !=
                              'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg')
                        Hero(
                          tag: character.id,
                          child: FadeInImage.memoryNetwork(
                            image: character.thumbnail!.imageUrl,
                            placeholder: kTransparentImage,
                            fit: BoxFit.cover,
                          ),
                        )
                      else
                        Hero(
                          tag: character.id,
                          child: EmptyImage(
                            offset: Offset(gyro.x / 3, gyro.y / 3),
                          ),
                        ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: const [
                              Colors.white38,
                              Colors.transparent,
                            ],
                            center: Alignment(
                              -gyro.y / 3,
                              -gyro.x / 3,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Hero(
                          tag: character.id.toString() + character.name,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              character.name,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    offset: Offset(0, 0),
                                  ),
                                  Shadow(
                                    blurRadius: 30,
                                    color: Colors.black,
                                    offset: Offset(gyro.x, gyro.y),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              error: (error, s) => Text(error.toString()),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
      },
      error: (error, s) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class EmptyImage extends StatelessWidget {
  const EmptyImage({
    Key? key,
    this.offset,
  }) : super(key: key);

  final Offset? offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.red.shade100,
            Colors.redAccent,
          ],
          center: Alignment(
            offset?.dy ?? 0,
            offset?.dx ?? 0,
          ),
        ),
      ),
    );
  }
}
