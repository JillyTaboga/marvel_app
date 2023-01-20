import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/use_cases/get_gyro_coords.dart';

class ShakedWidget extends HookConsumerWidget {
  const ShakedWidget({
    super.key,
    this.child,
    this.aligment,
  });

  final Widget? child;
  final FractionalOffset? aligment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gyroStream = ref.watch(gyroCoords);
    return gyroStream.when(
      data: (gyro) {
        const ratio = 10000;
        return Transform(
          transform: Matrix4(
            1,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            1,
          )..setRotationZ(gyro.z / 10),
          alignment: aligment ?? FractionalOffset.topCenter,
          child: Transform(
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
            alignment: aligment ?? FractionalOffset.topCenter,
            child: child,
          ),
        );
      },
      error: (error, stackTrace) => Center(
        child: Text(
          error.toString(),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
