// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicsUrl _$$_ComicsUrlFromJson(Map<String, dynamic> json) => _$_ComicsUrl(
      resourceURI: json['resourceURI'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ComicsUrlToJson(_$_ComicsUrl instance) =>
    <String, dynamic>{
      'resourceURI': instance.resourceURI,
      'name': instance.name,
    };

_$_ComicsUrlResponse _$$_ComicsUrlResponseFromJson(Map<String, dynamic> json) =>
    _$_ComicsUrlResponse(
      available: json['available'] as int,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ComicsUrl.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ComicsUrlResponseToJson(
        _$_ComicsUrlResponse instance) =>
    <String, dynamic>{
      'available': instance.available,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      id: json['id'] as int?,
      digitalId: json['digitalId'] as int?,
      title: json['title'] as String?,
      issueNumber: (json['issueNumber'] as num?)?.toDouble(),
      description: json['description'] as String?,
      pageCount: json['pageCount'] as int?,
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => ComicPrice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'id': instance.id,
      'digitalId': instance.digitalId,
      'title': instance.title,
      'issueNumber': instance.issueNumber,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'prices': instance.prices.map((e) => e.toJson()).toList(),
      'thumbnail': instance.thumbnail?.toJson(),
    };

_$_ComicPrice _$$_ComicPriceFromJson(Map<String, dynamic> json) =>
    _$_ComicPrice(
      type: $enumDecode(_$PriceTypeEnumMap, json['type']),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ComicPriceToJson(_$_ComicPrice instance) =>
    <String, dynamic>{
      'type': _$PriceTypeEnumMap[instance.type]!,
      'price': instance.price,
    };

const _$PriceTypeEnumMap = {
  PriceType.printed: 'printPrice',
  PriceType.digital: 'digitalPurchasePrice',
};
