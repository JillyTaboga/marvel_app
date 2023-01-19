import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/character.dart';
import 'home_screen.dart';

class DetailScreen extends HookConsumerWidget {
  const DetailScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context, ref) {
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 600));
    final animation = useAnimation(animationController);
    animationController.forward();

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              if (character.thumbnail != null &&
                  character.thumbnail!.imageUrl !=
                      'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg')
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: character.id,
                    child: Image.network(
                      character.thumbnail!.imageUrl,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      height: constraints.maxHeight,
                    ),
                  ),
                )
              else
                Hero(
                  tag: character.id,
                  child: const EmptyImage(),
                ),
              Positioned(
                left: 0,
                right: 0,
                bottom: constraints.maxHeight * 0.56,
                child: Hero(
                  tag: character.id.toString() + character.name,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      character.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
                            offset: Offset.zero,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: constraints.maxHeight * 0.55,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    color: Colors.white.withOpacity(animation),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
