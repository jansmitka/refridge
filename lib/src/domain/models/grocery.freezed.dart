// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Grocery {
  String? get groceryId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  GroceryType? get defaultType => throw _privateConstructorUsedError;
  GroceryType? get type => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  GroceryUnits? get defaultUnit => throw _privateConstructorUsedError;
  GroceryUnits? get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroceryCopyWith<Grocery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res, Grocery>;
  @useResult
  $Res call(
      {String? groceryId,
      String? label,
      String? imagePath,
      GroceryType? defaultType,
      GroceryType? type,
      double? amount,
      DateTime? expirationDate,
      GroceryUnits? defaultUnit,
      GroceryUnits? unit});
}

/// @nodoc
class _$GroceryCopyWithImpl<$Res, $Val extends Grocery>
    implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryId = freezed,
    Object? label = freezed,
    Object? imagePath = freezed,
    Object? defaultType = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? expirationDate = freezed,
    Object? defaultUnit = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      groceryId: freezed == groceryId
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultType: freezed == defaultType
          ? _value.defaultType
          : defaultType // ignore: cast_nullable_to_non_nullable
              as GroceryType?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GroceryType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      defaultUnit: freezed == defaultUnit
          ? _value.defaultUnit
          : defaultUnit // ignore: cast_nullable_to_non_nullable
              as GroceryUnits?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GroceryUnits?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryImplCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$$GroceryImplCopyWith(
          _$GroceryImpl value, $Res Function(_$GroceryImpl) then) =
      __$$GroceryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? groceryId,
      String? label,
      String? imagePath,
      GroceryType? defaultType,
      GroceryType? type,
      double? amount,
      DateTime? expirationDate,
      GroceryUnits? defaultUnit,
      GroceryUnits? unit});
}

/// @nodoc
class __$$GroceryImplCopyWithImpl<$Res>
    extends _$GroceryCopyWithImpl<$Res, _$GroceryImpl>
    implements _$$GroceryImplCopyWith<$Res> {
  __$$GroceryImplCopyWithImpl(
      _$GroceryImpl _value, $Res Function(_$GroceryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryId = freezed,
    Object? label = freezed,
    Object? imagePath = freezed,
    Object? defaultType = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? expirationDate = freezed,
    Object? defaultUnit = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$GroceryImpl(
      groceryId: freezed == groceryId
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultType: freezed == defaultType
          ? _value.defaultType
          : defaultType // ignore: cast_nullable_to_non_nullable
              as GroceryType?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GroceryType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      defaultUnit: freezed == defaultUnit
          ? _value.defaultUnit
          : defaultUnit // ignore: cast_nullable_to_non_nullable
              as GroceryUnits?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as GroceryUnits?,
    ));
  }
}

/// @nodoc

class _$GroceryImpl implements _Grocery {
  const _$GroceryImpl(
      {required this.groceryId,
      required this.label,
      required this.imagePath,
      required this.defaultType,
      required this.type,
      required this.amount,
      required this.expirationDate,
      required this.defaultUnit,
      required this.unit});

  @override
  final String? groceryId;
  @override
  final String? label;
  @override
  final String? imagePath;
  @override
  final GroceryType? defaultType;
  @override
  final GroceryType? type;
  @override
  final double? amount;
  @override
  final DateTime? expirationDate;
  @override
  final GroceryUnits? defaultUnit;
  @override
  final GroceryUnits? unit;

  @override
  String toString() {
    return 'Grocery(groceryId: $groceryId, label: $label, imagePath: $imagePath, defaultType: $defaultType, type: $type, amount: $amount, expirationDate: $expirationDate, defaultUnit: $defaultUnit, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryImpl &&
            (identical(other.groceryId, groceryId) ||
                other.groceryId == groceryId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.defaultType, defaultType) ||
                other.defaultType == defaultType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.defaultUnit, defaultUnit) ||
                other.defaultUnit == defaultUnit) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryId, label, imagePath,
      defaultType, type, amount, expirationDate, defaultUnit, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryImplCopyWith<_$GroceryImpl> get copyWith =>
      __$$GroceryImplCopyWithImpl<_$GroceryImpl>(this, _$identity);
}

abstract class _Grocery implements Grocery {
  const factory _Grocery(
      {required final String? groceryId,
      required final String? label,
      required final String? imagePath,
      required final GroceryType? defaultType,
      required final GroceryType? type,
      required final double? amount,
      required final DateTime? expirationDate,
      required final GroceryUnits? defaultUnit,
      required final GroceryUnits? unit}) = _$GroceryImpl;

  @override
  String? get groceryId;
  @override
  String? get label;
  @override
  String? get imagePath;
  @override
  GroceryType? get defaultType;
  @override
  GroceryType? get type;
  @override
  double? get amount;
  @override
  DateTime? get expirationDate;
  @override
  GroceryUnits? get defaultUnit;
  @override
  GroceryUnits? get unit;
  @override
  @JsonKey(ignore: true)
  _$$GroceryImplCopyWith<_$GroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
