import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';

part 'marvel_response.freezed.dart';
part 'marvel_response.g.dart';

@Freezed()
class MarvelResponse with _$MarvelResponse {
  factory MarvelResponse({
    required String copyright,
    required MarvelApiList data,
  }) = _MarvelResponse;

  factory MarvelResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MarvelResponseFromJson(json);
}

@Freezed()
class MarvelApiList with _$MarvelApiList {
  const factory MarvelApiList({
    @Default([]) List<Character> results,
    required int offset,
    required int limit,
    required int total,
    required int count,
  }) = _MarvelApiList;

  factory MarvelApiList.fromJson(Map<String, dynamic> json) =>
      _$MarvelApiListFromJson(json);
}
