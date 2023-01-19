import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

import '../../../domain/entities/marvel_response.dart';
import '../../packages/http/http_client.dart';
import 'characters_api.dart';

class MarvelApiCharactersImpl implements CharactersApi {
  MarvelApiCharactersImpl(this._httpClient);

  final HttpClient _httpClient;

  final String baseUrl = 'https://gateway.marvel.com:443/';

  @override
  Future<MarvelResponse> getCharacters({
    String? query,
    int size = 10,
    int page = 0,
  }) async {
    const String path = 'v1/public/characters';
    final String ts = DateTime.now().millisecondsSinceEpoch.toString();
    const String apiKey = String.fromEnvironment('MarvelApi');
    const String myKey = String.fromEnvironment('MyKeyApi');
    final encripted =
        crypto.md5.convert(const Utf8Encoder().convert(ts + myKey + apiKey));
    final String hash = hex.encode(encripted.bytes);

    final response = await _httpClient.get(
      baseUrl + path,
      query: {
        'limit': size.toString(),
        'offset': (page * size).toString(),
        'apikey': apiKey,
        'ts': ts,
        'hash': hash,
        if (query?.isNotEmpty ?? false) 'nameStartsWith': query ?? '',
      },
    );

    return MarvelResponse.fromJson(
      response.data,
    );
  }
}
