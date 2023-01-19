import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const Character._();
  const factory Character({
    required int id,
    required String name,
    Thumbnail? thumbnail,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  const Thumbnail._();
  const factory Thumbnail({
    required String path,
    required String extension,
  }) = _Thumbnail;

  String get imageUrl => '$path.$extension';

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}
