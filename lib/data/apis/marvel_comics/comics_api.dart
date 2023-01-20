import '../../../domain/entities/comics.dart';

abstract class ComicsApi {
  Future<Comic> getComic(String url);
}
