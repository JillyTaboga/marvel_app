import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../domain/entities/comics.dart';
import '../../domain/use_cases/get_gyro_coords.dart';
import '../widgets/empty_image.dart';
import '../widgets/error_widget.dart';
import '../widgets/loading_widget.dart';
import '../widgets/shaked_widget.dart';

class ComicDetailScreen extends HookConsumerWidget {
  const ComicDetailScreen({
    super.key,
    required this.comic,
  });

  final Comic comic;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ShadowBox(
                child: ShakedWidget(
                  aligment: FractionalOffset.center,
                  child: Hero(
                    tag: comic.id.toString(),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: (comic.thumbnail != null &&
                              comic.thumbnail!.imageUrl !=
                                  'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg')
                          ? FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: comic.thumbnail!.imageUrl,
                            )
                          : const EmptyImage(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (comic.title != null)
            Positioned(
              top: 110,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  comic.title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (comic.description != null)
                    SizedBox(
                      height: 120,
                      child: Scrollbar(
                        thumbVisibility: true,
                        child: SingleChildScrollView(
                          child: Text(
                            comic.description!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  if (comic.prices.isNotEmpty)
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 15,
                      runSpacing: 15,
                      children: comic.prices
                          .map(
                            (e) => Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(e.type.icon),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  NumberFormat.simpleCurrency(
                                          locale: Platform.localeName)
                                      .format(e.price),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                ],
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
      ),
    );
  }
}

class ShadowBox extends HookConsumerWidget {
  const ShadowBox({
    super.key,
    this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coords = ref.watch(gyroCoords);
    return coords.when(
      data: (gyro) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 0.2,
                offset: Offset(gyro.y * 20, -gyro.x * 20),
                color: Colors.black45,
              ),
            ],
          ),
          child: child,
        );
      },
      error: (error, s) => ErrorCustom(error),
      loading: () => const LoadingWidget(),
    );
  }
}
