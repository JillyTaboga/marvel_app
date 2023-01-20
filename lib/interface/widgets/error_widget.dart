import 'package:flutter/material.dart';

class ErrorCustom extends StatelessWidget {
  const ErrorCustom(
    this.error, {
    super.key,
  });

  final dynamic error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error.toString()),
    );
  }
}
