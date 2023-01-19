// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as int,
      name: json['name'] as String,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail': instance.thumbnail?.toJson(),
    };

_$_Thumbnail _$$_ThumbnailFromJson(Map<String, dynamic> json) => _$_Thumbnail(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$$_ThumbnailToJson(_$_Thumbnail instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };
