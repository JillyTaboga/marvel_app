import '../../../domain/entities/marvel_response.dart';

abstract class CharactersApi {
  Future<MarvelResponse> getCharacters({
    String? query,
    int size = 10,
    int page = 0,
  });
}
