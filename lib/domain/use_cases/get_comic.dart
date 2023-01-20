import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/injection.dart';
import '../entities/comics.dart';

final getComic =
    FutureProvider.autoDispose.family<Comic, String>((ref, url) async {
  final api = ref.watch(comicApi);
  return await api.getComic(url);
});
