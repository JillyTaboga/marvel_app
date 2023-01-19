import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/debouce.dart';
import '../../data/injection.dart';
import '../../interface/screens/home_screen.dart';
import '../entities/marvel_response.dart';

final getCharactersProvider =
    FutureProvider.autoDispose.family<MarvelResponse, int>((ref, page) async {
  final api = ref.watch(charactersApi);
  final query = await ref.watch(searchQuery.future);
  return await api.getCharacters(page: page, query: query);
});

final searchQuery = FutureProvider<String>((ref) async {
  final query = ref.watch(searchProvider);
  await ref.debounce(const Duration(seconds: 1));
  return query;
});
