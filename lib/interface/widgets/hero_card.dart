import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../domain/use_cases/get_characters.dart';
import '../../domain/use_cases/get_gyro_coords.dart';
import '../screens/detail_screen.dart';
import 'empty_image.dart';
import 'error_widget.dart';
import 'loading_widget.dart';

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
        return Container(
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
            error: (error, s) => ErrorCustom(error),
            loading: () => const LoadingWidget(),
          ),
        );
      },
      error: (error, s) => ErrorCustom(error),
      loading: () => const LoadingWidget(),
    );
  }
}
