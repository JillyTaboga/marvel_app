import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'apis/marvel_characters/characters_api.dart';
import 'apis/marvel_characters/marvel_api_characters_impl.dart';
import 'packages/giroscope/giroscope.dart';
import 'packages/giroscope/sensor_plus_giroscope.dart';
import 'packages/http/http_client.dart';
import 'packages/http/http_client_dio_impl.dart';

final httpClient = Provider<HttpClient>((ref) {
  return DioHttpImplement();
});

final charactersApi = Provider<CharactersApi>((ref) {
  return MarvelApiCharactersImpl(ref.watch(httpClient));
});

final gyroscope = Provider<Giroscope>((ref) => SensorPlusGiroscope());
