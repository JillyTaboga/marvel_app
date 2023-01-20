// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicsUrl _$ComicsUrlFromJson(Map<String, dynamic> json) {
  return _ComicsUrl.fromJson(json);
}

/// @nodoc
mixin _$ComicsUrl {
  String get resourceURI => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsUrlCopyWith<ComicsUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsUrlCopyWith<$Res> {
  factory $ComicsUrlCopyWith(ComicsUrl value, $Res Function(ComicsUrl) then) =
      _$ComicsUrlCopyWithImpl<$Res, ComicsUrl>;
  @useResult
  $Res call({String resourceURI, String name});
}

/// @nodoc
class _$ComicsUrlCopyWithImpl<$Res, $Val extends ComicsUrl>
    implements $ComicsUrlCopyWith<$Res> {
  _$ComicsUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsUrlCopyWith<$Res> implements $ComicsUrlCopyWith<$Res> {
  factory _$$_ComicsUrlCopyWith(
          _$_ComicsUrl value, $Res Function(_$_ComicsUrl) then) =
      __$$_ComicsUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resourceURI, String name});
}

/// @nodoc
class __$$_ComicsUrlCopyWithImpl<$Res>
    extends _$ComicsUrlCopyWithImpl<$Res, _$_ComicsUrl>
    implements _$$_ComicsUrlCopyWith<$Res> {
  __$$_ComicsUrlCopyWithImpl(
      _$_ComicsUrl _value, $Res Function(_$_ComicsUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = null,
    Object? name = null,
  }) {
    return _then(_$_ComicsUrl(
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsUrl extends _ComicsUrl {
  const _$_ComicsUrl({required this.resourceURI, required this.name})
      : super._();

  factory _$_ComicsUrl.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsUrlFromJson(json);

  @override
  final String resourceURI;
  @override
  final String name;

  @override
  String toString() {
    return 'ComicsUrl(resourceURI: $resourceURI, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsUrl &&
            (identical(other.resourceURI, resourceURI) ||
                other.resourceURI == resourceURI) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceURI, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsUrlCopyWith<_$_ComicsUrl> get copyWith =>
      __$$_ComicsUrlCopyWithImpl<_$_ComicsUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsUrlToJson(
      this,
    );
  }
}

abstract class _ComicsUrl extends ComicsUrl {
  const factory _ComicsUrl(
      {required final String resourceURI,
      required final String name}) = _$_ComicsUrl;
  const _ComicsUrl._() : super._();

  factory _ComicsUrl.fromJson(Map<String, dynamic> json) =
      _$_ComicsUrl.fromJson;

  @override
  String get resourceURI;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsUrlCopyWith<_$_ComicsUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComicsUrlResponse _$ComicsUrlResponseFromJson(Map<String, dynamic> json) {
  return _ComicsUrlResponse.fromJson(json);
}

/// @nodoc
mixin _$ComicsUrlResponse {
  int get available => throw _privateConstructorUsedError;
  List<ComicsUrl> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsUrlResponseCopyWith<ComicsUrlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsUrlResponseCopyWith<$Res> {
  factory $ComicsUrlResponseCopyWith(
          ComicsUrlResponse value, $Res Function(ComicsUrlResponse) then) =
      _$ComicsUrlResponseCopyWithImpl<$Res, ComicsUrlResponse>;
  @useResult
  $Res call({int available, List<ComicsUrl> items});
}

/// @nodoc
class _$ComicsUrlResponseCopyWithImpl<$Res, $Val extends ComicsUrlResponse>
    implements $ComicsUrlResponseCopyWith<$Res> {
  _$ComicsUrlResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicsUrl>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsUrlResponseCopyWith<$Res>
    implements $ComicsUrlResponseCopyWith<$Res> {
  factory _$$_ComicsUrlResponseCopyWith(_$_ComicsUrlResponse value,
          $Res Function(_$_ComicsUrlResponse) then) =
      __$$_ComicsUrlResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int available, List<ComicsUrl> items});
}

/// @nodoc
class __$$_ComicsUrlResponseCopyWithImpl<$Res>
    extends _$ComicsUrlResponseCopyWithImpl<$Res, _$_ComicsUrlResponse>
    implements _$$_ComicsUrlResponseCopyWith<$Res> {
  __$$_ComicsUrlResponseCopyWithImpl(
      _$_ComicsUrlResponse _value, $Res Function(_$_ComicsUrlResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? items = null,
  }) {
    return _then(_$_ComicsUrlResponse(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicsUrl>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsUrlResponse implements _ComicsUrlResponse {
  const _$_ComicsUrlResponse(
      {required this.available, final List<ComicsUrl> items = const []})
      : _items = items;

  factory _$_ComicsUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsUrlResponseFromJson(json);

  @override
  final int available;
  final List<ComicsUrl> _items;
  @override
  @JsonKey()
  List<ComicsUrl> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ComicsUrlResponse(available: $available, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsUrlResponse &&
            (identical(other.available, available) ||
                other.available == available) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, available, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsUrlResponseCopyWith<_$_ComicsUrlResponse> get copyWith =>
      __$$_ComicsUrlResponseCopyWithImpl<_$_ComicsUrlResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsUrlResponseToJson(
      this,
    );
  }
}

abstract class _ComicsUrlResponse implements ComicsUrlResponse {
  const factory _ComicsUrlResponse(
      {required final int available,
      final List<ComicsUrl> items}) = _$_ComicsUrlResponse;

  factory _ComicsUrlResponse.fromJson(Map<String, dynamic> json) =
      _$_ComicsUrlResponse.fromJson;

  @override
  int get available;
  @override
  List<ComicsUrl> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsUrlResponseCopyWith<_$_ComicsUrlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
mixin _$Comic {
  int? get id => throw _privateConstructorUsedError;
  int? get digitalId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get issueNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  List<ComicPrice> get prices => throw _privateConstructorUsedError;
  Thumbnail? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicCopyWith<Comic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCopyWith<$Res> {
  factory $ComicCopyWith(Comic value, $Res Function(Comic) then) =
      _$ComicCopyWithImpl<$Res, Comic>;
  @useResult
  $Res call(
      {int? id,
      int? digitalId,
      String? title,
      double? issueNumber,
      String? description,
      int? pageCount,
      List<ComicPrice> prices,
      Thumbnail? thumbnail});

  $ThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$ComicCopyWithImpl<$Res, $Val extends Comic>
    implements $ComicCopyWith<$Res> {
  _$ComicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? issueNumber = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? prices = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: freezed == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: freezed == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ComicPrice>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ThumbnailCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComicCopyWith<$Res> implements $ComicCopyWith<$Res> {
  factory _$$_ComicCopyWith(_$_Comic value, $Res Function(_$_Comic) then) =
      __$$_ComicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? digitalId,
      String? title,
      double? issueNumber,
      String? description,
      int? pageCount,
      List<ComicPrice> prices,
      Thumbnail? thumbnail});

  @override
  $ThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$_ComicCopyWithImpl<$Res> extends _$ComicCopyWithImpl<$Res, _$_Comic>
    implements _$$_ComicCopyWith<$Res> {
  __$$_ComicCopyWithImpl(_$_Comic _value, $Res Function(_$_Comic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? issueNumber = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? prices = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_Comic(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: freezed == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: freezed == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ComicPrice>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comic extends _Comic {
  const _$_Comic(
      {this.id,
      this.digitalId,
      this.title,
      this.issueNumber,
      this.description,
      this.pageCount,
      final List<ComicPrice> prices = const [],
      this.thumbnail})
      : _prices = prices,
        super._();

  factory _$_Comic.fromJson(Map<String, dynamic> json) =>
      _$$_ComicFromJson(json);

  @override
  final int? id;
  @override
  final int? digitalId;
  @override
  final String? title;
  @override
  final double? issueNumber;
  @override
  final String? description;
  @override
  final int? pageCount;
  final List<ComicPrice> _prices;
  @override
  @JsonKey()
  List<ComicPrice> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  final Thumbnail? thumbnail;

  @override
  String toString() {
    return 'Comic(id: $id, digitalId: $digitalId, title: $title, issueNumber: $issueNumber, description: $description, pageCount: $pageCount, prices: $prices, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.digitalId, digitalId) ||
                other.digitalId == digitalId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.issueNumber, issueNumber) ||
                other.issueNumber == issueNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      digitalId,
      title,
      issueNumber,
      description,
      pageCount,
      const DeepCollectionEquality().hash(_prices),
      thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicCopyWith<_$_Comic> get copyWith =>
      __$$_ComicCopyWithImpl<_$_Comic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicToJson(
      this,
    );
  }
}

abstract class _Comic extends Comic {
  const factory _Comic(
      {final int? id,
      final int? digitalId,
      final String? title,
      final double? issueNumber,
      final String? description,
      final int? pageCount,
      final List<ComicPrice> prices,
      final Thumbnail? thumbnail}) = _$_Comic;
  const _Comic._() : super._();

  factory _Comic.fromJson(Map<String, dynamic> json) = _$_Comic.fromJson;

  @override
  int? get id;
  @override
  int? get digitalId;
  @override
  String? get title;
  @override
  double? get issueNumber;
  @override
  String? get description;
  @override
  int? get pageCount;
  @override
  List<ComicPrice> get prices;
  @override
  Thumbnail? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_ComicCopyWith<_$_Comic> get copyWith =>
      throw _privateConstructorUsedError;
}

ComicPrice _$ComicPriceFromJson(Map<String, dynamic> json) {
  return _ComicPrice.fromJson(json);
}

/// @nodoc
mixin _$ComicPrice {
  PriceType get type => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicPriceCopyWith<ComicPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicPriceCopyWith<$Res> {
  factory $ComicPriceCopyWith(
          ComicPrice value, $Res Function(ComicPrice) then) =
      _$ComicPriceCopyWithImpl<$Res, ComicPrice>;
  @useResult
  $Res call({PriceType type, double price});
}

/// @nodoc
class _$ComicPriceCopyWithImpl<$Res, $Val extends ComicPrice>
    implements $ComicPriceCopyWith<$Res> {
  _$ComicPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PriceType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicPriceCopyWith<$Res>
    implements $ComicPriceCopyWith<$Res> {
  factory _$$_ComicPriceCopyWith(
          _$_ComicPrice value, $Res Function(_$_ComicPrice) then) =
      __$$_ComicPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceType type, double price});
}

/// @nodoc
class __$$_ComicPriceCopyWithImpl<$Res>
    extends _$ComicPriceCopyWithImpl<$Res, _$_ComicPrice>
    implements _$$_ComicPriceCopyWith<$Res> {
  __$$_ComicPriceCopyWithImpl(
      _$_ComicPrice _value, $Res Function(_$_ComicPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? price = null,
  }) {
    return _then(_$_ComicPrice(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PriceType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicPrice implements _ComicPrice {
  const _$_ComicPrice({required this.type, required this.price});

  factory _$_ComicPrice.fromJson(Map<String, dynamic> json) =>
      _$$_ComicPriceFromJson(json);

  @override
  final PriceType type;
  @override
  final double price;

  @override
  String toString() {
    return 'ComicPrice(type: $type, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicPrice &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicPriceCopyWith<_$_ComicPrice> get copyWith =>
      __$$_ComicPriceCopyWithImpl<_$_ComicPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicPriceToJson(
      this,
    );
  }
}

abstract class _ComicPrice implements ComicPrice {
  const factory _ComicPrice(
      {required final PriceType type,
      required final double price}) = _$_ComicPrice;

  factory _ComicPrice.fromJson(Map<String, dynamic> json) =
      _$_ComicPrice.fromJson;

  @override
  PriceType get type;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_ComicPriceCopyWith<_$_ComicPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
