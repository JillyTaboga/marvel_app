import 'package:flutter/material.dart';

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
            Colors.deepPurple.shade700,
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
