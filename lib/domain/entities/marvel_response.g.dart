// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarvelResponse _$$_MarvelResponseFromJson(Map<String, dynamic> json) =>
    _$_MarvelResponse(
      copyright: json['copyright'] as String,
      data: MarvelApiList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MarvelResponseToJson(_$_MarvelResponse instance) =>
    <String, dynamic>{
      'copyright': instance.copyright,
      'data': instance.data.toJson(),
    };

_$_MarvelApiList _$$_MarvelApiListFromJson(Map<String, dynamic> json) =>
    _$_MarvelApiList(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_MarvelApiListToJson(_$_MarvelApiList instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
    };
