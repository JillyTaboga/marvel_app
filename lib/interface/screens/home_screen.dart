import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/use_cases/get_characters.dart';
import '../widgets/error_widget.dart';
import '../widgets/hero_card.dart';
import '../widgets/loading_widget.dart';
import '../widgets/shaked_widget.dart';

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              ref
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
                                  return ShakedWidget(
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Container(
                                            width: constraints.maxWidth - 100,
                                            height:
                                                constraints.maxHeight * 0.55,
                                            margin: const EdgeInsets.all(10),
                                            child: HeroCard(
                                              currentPage: currentPage,
                                              index: index,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: constraints.maxHeight * 0.25,
                                          left: (constraints.maxWidth / 2) - 52,
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade600,
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 3,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: 5,
                                            height:
                                                constraints.maxHeight * 0.255,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
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
                    error: (error, s) => ErrorCustom(error),
                    loading: () => const LoadingWidget(),
                  ),
              const Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: SearchField(),
                ),
              ),
            ],
          );
        },
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
        fillColor: Colors.grey.shade400,
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
