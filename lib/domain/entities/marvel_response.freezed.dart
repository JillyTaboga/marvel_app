// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarvelResponse _$MarvelResponseFromJson(Map<String, dynamic> json) {
  return _MarvelResponse.fromJson(json);
}

/// @nodoc
mixin _$MarvelResponse {
  String get copyright => throw _privateConstructorUsedError;
  MarvelApiList get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelResponseCopyWith<MarvelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelResponseCopyWith<$Res> {
  factory $MarvelResponseCopyWith(
          MarvelResponse value, $Res Function(MarvelResponse) then) =
      _$MarvelResponseCopyWithImpl<$Res, MarvelResponse>;
  @useResult
  $Res call({String copyright, MarvelApiList data});

  $MarvelApiListCopyWith<$Res> get data;
}

/// @nodoc
class _$MarvelResponseCopyWithImpl<$Res, $Val extends MarvelResponse>
    implements $MarvelResponseCopyWith<$Res> {
  _$MarvelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyright = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MarvelApiList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarvelApiListCopyWith<$Res> get data {
    return $MarvelApiListCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarvelResponseCopyWith<$Res>
    implements $MarvelResponseCopyWith<$Res> {
  factory _$$_MarvelResponseCopyWith(
          _$_MarvelResponse value, $Res Function(_$_MarvelResponse) then) =
      __$$_MarvelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String copyright, MarvelApiList data});

  @override
  $MarvelApiListCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MarvelResponseCopyWithImpl<$Res>
    extends _$MarvelResponseCopyWithImpl<$Res, _$_MarvelResponse>
    implements _$$_MarvelResponseCopyWith<$Res> {
  __$$_MarvelResponseCopyWithImpl(
      _$_MarvelResponse _value, $Res Function(_$_MarvelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copyright = null,
    Object? data = null,
  }) {
    return _then(_$_MarvelResponse(
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MarvelApiList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarvelResponse implements _MarvelResponse {
  _$_MarvelResponse({required this.copyright, required this.data});

  factory _$_MarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MarvelResponseFromJson(json);

  @override
  final String copyright;
  @override
  final MarvelApiList data;

  @override
  String toString() {
    return 'MarvelResponse(copyright: $copyright, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarvelResponse &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, copyright, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarvelResponseCopyWith<_$_MarvelResponse> get copyWith =>
      __$$_MarvelResponseCopyWithImpl<_$_MarvelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarvelResponseToJson(
      this,
    );
  }
}

abstract class _MarvelResponse implements MarvelResponse {
  factory _MarvelResponse(
      {required final String copyright,
      required final MarvelApiList data}) = _$_MarvelResponse;

  factory _MarvelResponse.fromJson(Map<String, dynamic> json) =
      _$_MarvelResponse.fromJson;

  @override
  String get copyright;
  @override
  MarvelApiList get data;
  @override
  @JsonKey(ignore: true)
  _$$_MarvelResponseCopyWith<_$_MarvelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MarvelApiList _$MarvelApiListFromJson(Map<String, dynamic> json) {
  return _MarvelApiList.fromJson(json);
}

/// @nodoc
mixin _$MarvelApiList {
  List<Character> get results => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelApiListCopyWith<MarvelApiList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelApiListCopyWith<$Res> {
  factory $MarvelApiListCopyWith(
          MarvelApiList value, $Res Function(MarvelApiList) then) =
      _$MarvelApiListCopyWithImpl<$Res, MarvelApiList>;
  @useResult
  $Res call(
      {List<Character> results, int offset, int limit, int total, int count});
}

/// @nodoc
class _$MarvelApiListCopyWithImpl<$Res, $Val extends MarvelApiList>
    implements $MarvelApiListCopyWith<$Res> {
  _$MarvelApiListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarvelApiListCopyWith<$Res>
    implements $MarvelApiListCopyWith<$Res> {
  factory _$$_MarvelApiListCopyWith(
          _$_MarvelApiList value, $Res Function(_$_MarvelApiList) then) =
      __$$_MarvelApiListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Character> results, int offset, int limit, int total, int count});
}

/// @nodoc
class __$$_MarvelApiListCopyWithImpl<$Res>
    extends _$MarvelApiListCopyWithImpl<$Res, _$_MarvelApiList>
    implements _$$_MarvelApiListCopyWith<$Res> {
  __$$_MarvelApiListCopyWithImpl(
      _$_MarvelApiList _value, $Res Function(_$_MarvelApiList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
  }) {
    return _then(_$_MarvelApiList(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarvelApiList implements _MarvelApiList {
  const _$_MarvelApiList(
      {final List<Character> results = const [],
      required this.offset,
      required this.limit,
      required this.total,
      required this.count})
      : _results = results;

  factory _$_MarvelApiList.fromJson(Map<String, dynamic> json) =>
      _$$_MarvelApiListFromJson(json);

  final List<Character> _results;
  @override
  @JsonKey()
  List<Character> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;

  @override
  String toString() {
    return 'MarvelApiList(results: $results, offset: $offset, limit: $limit, total: $total, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarvelApiList &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      offset,
      limit,
      total,
      count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarvelApiListCopyWith<_$_MarvelApiList> get copyWith =>
      __$$_MarvelApiListCopyWithImpl<_$_MarvelApiList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarvelApiListToJson(
      this,
    );
  }
}

abstract class _MarvelApiList implements MarvelApiList {
  const factory _MarvelApiList(
      {final List<Character> results,
      required final int offset,
      required final int limit,
      required final int total,
      required final int count}) = _$_MarvelApiList;

  factory _MarvelApiList.fromJson(Map<String, dynamic> json) =
      _$_MarvelApiList.fromJson;

  @override
  List<Character> get results;
  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_MarvelApiListCopyWith<_$_MarvelApiList> get copyWith =>
      throw _privateConstructorUsedError;
}
