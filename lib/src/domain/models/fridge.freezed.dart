// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Fridge {
  String? get fridgeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isDefault => throw _privateConstructorUsedError;
  FridgeType? get type => throw _privateConstructorUsedError;
  List<String>? get users => throw _privateConstructorUsedError;

  /// Create a copy of Fridge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FridgeCopyWith<Fridge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeCopyWith<$Res> {
  factory $FridgeCopyWith(Fridge value, $Res Function(Fridge) then) =
      _$FridgeCopyWithImpl<$Res, Fridge>;
  @useResult
  $Res call(
      {String? fridgeId,
      String? title,
      bool? isDefault,
      FridgeType? type,
      List<String>? users});
}

/// @nodoc
class _$FridgeCopyWithImpl<$Res, $Val extends Fridge>
    implements $FridgeCopyWith<$Res> {
  _$FridgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fridge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fridgeId = freezed,
    Object? title = freezed,
    Object? isDefault = freezed,
    Object? type = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      fridgeId: freezed == fridgeId
          ? _value.fridgeId
          : fridgeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FridgeType?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FridgeImplCopyWith<$Res> implements $FridgeCopyWith<$Res> {
  factory _$$FridgeImplCopyWith(
          _$FridgeImpl value, $Res Function(_$FridgeImpl) then) =
      __$$FridgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fridgeId,
      String? title,
      bool? isDefault,
      FridgeType? type,
      List<String>? users});
}

/// @nodoc
class __$$FridgeImplCopyWithImpl<$Res>
    extends _$FridgeCopyWithImpl<$Res, _$FridgeImpl>
    implements _$$FridgeImplCopyWith<$Res> {
  __$$FridgeImplCopyWithImpl(
      _$FridgeImpl _value, $Res Function(_$FridgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fridge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fridgeId = freezed,
    Object? title = freezed,
    Object? isDefault = freezed,
    Object? type = freezed,
    Object? users = freezed,
  }) {
    return _then(_$FridgeImpl(
      fridgeId: freezed == fridgeId
          ? _value.fridgeId
          : fridgeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FridgeType?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$FridgeImpl implements _Fridge {
  const _$FridgeImpl(
      {required this.fridgeId,
      required this.title,
      required this.isDefault,
      required this.type,
      required final List<String>? users})
      : _users = users;

  @override
  final String? fridgeId;
  @override
  final String? title;
  @override
  final bool? isDefault;
  @override
  final FridgeType? type;
  final List<String>? _users;
  @override
  List<String>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Fridge(fridgeId: $fridgeId, title: $title, isDefault: $isDefault, type: $type, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FridgeImpl &&
            (identical(other.fridgeId, fridgeId) ||
                other.fridgeId == fridgeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fridgeId, title, isDefault, type,
      const DeepCollectionEquality().hash(_users));

  /// Create a copy of Fridge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FridgeImplCopyWith<_$FridgeImpl> get copyWith =>
      __$$FridgeImplCopyWithImpl<_$FridgeImpl>(this, _$identity);
}

abstract class _Fridge implements Fridge {
  const factory _Fridge(
      {required final String? fridgeId,
      required final String? title,
      required final bool? isDefault,
      required final FridgeType? type,
      required final List<String>? users}) = _$FridgeImpl;

  @override
  String? get fridgeId;
  @override
  String? get title;
  @override
  bool? get isDefault;
  @override
  FridgeType? get type;
  @override
  List<String>? get users;

  /// Create a copy of Fridge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FridgeImplCopyWith<_$FridgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
