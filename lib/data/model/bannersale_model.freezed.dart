// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bannersale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bannersale _$BannersaleFromJson(Map<String, dynamic> json) {
  return _Bannersale.fromJson(json);
}

/// @nodoc
mixin _$Bannersale {
  String get bannerUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersaleCopyWith<Bannersale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersaleCopyWith<$Res> {
  factory $BannersaleCopyWith(
          Bannersale value, $Res Function(Bannersale) then) =
      _$BannersaleCopyWithImpl<$Res, Bannersale>;
  @useResult
  $Res call({String bannerUrl});
}

/// @nodoc
class _$BannersaleCopyWithImpl<$Res, $Val extends Bannersale>
    implements $BannersaleCopyWith<$Res> {
  _$BannersaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerUrl = null,
  }) {
    return _then(_value.copyWith(
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannersaleCopyWith<$Res>
    implements $BannersaleCopyWith<$Res> {
  factory _$$_BannersaleCopyWith(
          _$_Bannersale value, $Res Function(_$_Bannersale) then) =
      __$$_BannersaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bannerUrl});
}

/// @nodoc
class __$$_BannersaleCopyWithImpl<$Res>
    extends _$BannersaleCopyWithImpl<$Res, _$_Bannersale>
    implements _$$_BannersaleCopyWith<$Res> {
  __$$_BannersaleCopyWithImpl(
      _$_Bannersale _value, $Res Function(_$_Bannersale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerUrl = null,
  }) {
    return _then(_$_Bannersale(
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bannersale with DiagnosticableTreeMixin implements _Bannersale {
  const _$_Bannersale({required this.bannerUrl});

  factory _$_Bannersale.fromJson(Map<String, dynamic> json) =>
      _$$_BannersaleFromJson(json);

  @override
  final String bannerUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bannersale(bannerUrl: $bannerUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bannersale'))
      ..add(DiagnosticsProperty('bannerUrl', bannerUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bannersale &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bannerUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannersaleCopyWith<_$_Bannersale> get copyWith =>
      __$$_BannersaleCopyWithImpl<_$_Bannersale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannersaleToJson(
      this,
    );
  }
}

abstract class _Bannersale implements Bannersale {
  const factory _Bannersale({required final String bannerUrl}) = _$_Bannersale;

  factory _Bannersale.fromJson(Map<String, dynamic> json) =
      _$_Bannersale.fromJson;

  @override
  String get bannerUrl;
  @override
  @JsonKey(ignore: true)
  _$$_BannersaleCopyWith<_$_Bannersale> get copyWith =>
      throw _privateConstructorUsedError;
}
