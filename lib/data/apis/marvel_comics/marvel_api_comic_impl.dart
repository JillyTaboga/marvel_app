import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

import '../../../domain/entities/comics.dart';
import '../../packages/http/http_client.dart';
import 'comics_api.dart';

class MarvelApiComicsImpl implements ComicsApi {
  MarvelApiComicsImpl(this._httpClient);
  final HttpClient _httpClient;

  @override
  Future<Comic> getComic(String url) async {
    final String ts = DateTime.now().millisecondsSinceEpoch.toString();
    const String apiKey = String.fromEnvironment('MarvelApi');
    const String myKey = String.fromEnvironment('MyKeyApi');
    final encripted =
        crypto.md5.convert(const Utf8Encoder().convert(ts + myKey + apiKey));
    final String hash = hex.encode(encripted.bytes);

    final response = await _httpClient.get(
      url,
      query: {
        'apikey': apiKey,
        'ts': ts,
        'hash': hash,
      },
    );

    final data = response.data['data'] as Map<String, dynamic>;
    final comicJson = (data['results'] as List).first;
    final comic = Comic.fromJson(comicJson);
    return comic;
  }
}
