// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topsearch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Topsearch _$TopsearchFromJson(Map<String, dynamic> json) {
  return _Topsearch.fromJson(json);
}

/// @nodoc
mixin _$Topsearch {
  String get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopsearchCopyWith<Topsearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopsearchCopyWith<$Res> {
  factory $TopsearchCopyWith(Topsearch value, $Res Function(Topsearch) then) =
      _$TopsearchCopyWithImpl<$Res, Topsearch>;
  @useResult
  $Res call({String thumbnail, String title});
}

/// @nodoc
class _$TopsearchCopyWithImpl<$Res, $Val extends Topsearch>
    implements $TopsearchCopyWith<$Res> {
  _$TopsearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopsearchCopyWith<$Res> implements $TopsearchCopyWith<$Res> {
  factory _$$_TopsearchCopyWith(
          _$_Topsearch value, $Res Function(_$_Topsearch) then) =
      __$$_TopsearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String thumbnail, String title});
}

/// @nodoc
class __$$_TopsearchCopyWithImpl<$Res>
    extends _$TopsearchCopyWithImpl<$Res, _$_Topsearch>
    implements _$$_TopsearchCopyWith<$Res> {
  __$$_TopsearchCopyWithImpl(
      _$_Topsearch _value, $Res Function(_$_Topsearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_$_Topsearch(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topsearch with DiagnosticableTreeMixin implements _Topsearch {
  const _$_Topsearch({required this.thumbnail, required this.title});

  factory _$_Topsearch.fromJson(Map<String, dynamic> json) =>
      _$$_TopsearchFromJson(json);

  @override
  final String thumbnail;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Topsearch(thumbnail: $thumbnail, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Topsearch'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topsearch &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopsearchCopyWith<_$_Topsearch> get copyWith =>
      __$$_TopsearchCopyWithImpl<_$_Topsearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopsearchToJson(
      this,
    );
  }
}

abstract class _Topsearch implements Topsearch {
  const factory _Topsearch(
      {required final String thumbnail,
      required final String title}) = _$_Topsearch;

  factory _Topsearch.fromJson(Map<String, dynamic> json) =
      _$_Topsearch.fromJson;

  @override
  String get thumbnail;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_TopsearchCopyWith<_$_Topsearch> get copyWith =>
      throw _privateConstructorUsedError;
}
