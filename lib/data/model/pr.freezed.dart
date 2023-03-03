// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pr _$PrFromJson(Map<String, dynamic> json) {
  return _Pr.fromJson(json);
}

/// @nodoc
mixin _$Pr {
  String get name => throw _privateConstructorUsedError;
  String get urlImg => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get old_price => throw _privateConstructorUsedError;
  String get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrCopyWith<Pr> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrCopyWith<$Res> {
  factory $PrCopyWith(Pr value, $Res Function(Pr) then) =
      _$PrCopyWithImpl<$Res, Pr>;
  @useResult
  $Res call(
      {String name, String urlImg, String price, String old_price, String qty});
}

/// @nodoc
class _$PrCopyWithImpl<$Res, $Val extends Pr> implements $PrCopyWith<$Res> {
  _$PrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? urlImg = null,
    Object? price = null,
    Object? old_price = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      urlImg: null == urlImg
          ? _value.urlImg
          : urlImg // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      old_price: null == old_price
          ? _value.old_price
          : old_price // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrCopyWith<$Res> implements $PrCopyWith<$Res> {
  factory _$$_PrCopyWith(_$_Pr value, $Res Function(_$_Pr) then) =
      __$$_PrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String urlImg, String price, String old_price, String qty});
}

/// @nodoc
class __$$_PrCopyWithImpl<$Res> extends _$PrCopyWithImpl<$Res, _$_Pr>
    implements _$$_PrCopyWith<$Res> {
  __$$_PrCopyWithImpl(_$_Pr _value, $Res Function(_$_Pr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? urlImg = null,
    Object? price = null,
    Object? old_price = null,
    Object? qty = null,
  }) {
    return _then(_$_Pr(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      urlImg: null == urlImg
          ? _value.urlImg
          : urlImg // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      old_price: null == old_price
          ? _value.old_price
          : old_price // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pr with DiagnosticableTreeMixin implements _Pr {
  const _$_Pr(
      {required this.name,
      required this.urlImg,
      required this.price,
      required this.old_price,
      required this.qty});

  factory _$_Pr.fromJson(Map<String, dynamic> json) => _$$_PrFromJson(json);

  @override
  final String name;
  @override
  final String urlImg;
  @override
  final String price;
  @override
  final String old_price;
  @override
  final String qty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pr(name: $name, urlImg: $urlImg, price: $price, old_price: $old_price, qty: $qty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pr'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('urlImg', urlImg))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('old_price', old_price))
      ..add(DiagnosticsProperty('qty', qty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pr &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.urlImg, urlImg) || other.urlImg == urlImg) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.old_price, old_price) ||
                other.old_price == old_price) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, urlImg, price, old_price, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrCopyWith<_$_Pr> get copyWith =>
      __$$_PrCopyWithImpl<_$_Pr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrToJson(
      this,
    );
  }
}

abstract class _Pr implements Pr {
  const factory _Pr(
      {required final String name,
      required final String urlImg,
      required final String price,
      required final String old_price,
      required final String qty}) = _$_Pr;

  factory _Pr.fromJson(Map<String, dynamic> json) = _$_Pr.fromJson;

  @override
  String get name;
  @override
  String get urlImg;
  @override
  String get price;
  @override
  String get old_price;
  @override
  String get qty;
  @override
  @JsonKey(ignore: true)
  _$$_PrCopyWith<_$_Pr> get copyWith => throw _privateConstructorUsedError;
}
