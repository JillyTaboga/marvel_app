import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension RefExtension on Ref {
  CancelToken cancelToken() {
    final token = CancelToken();
    onDispose(token.cancel);
    return token;
  }

  Future<void> debounce(Duration duration) {
    final completer = Completer<void>();
    final timer = Timer(duration, () {
      if (!completer.isCompleted) completer.complete();
    });

    onDispose(() {
      timer.cancel();
    });

    return completer.future;
  }
}

class RefEx {}
