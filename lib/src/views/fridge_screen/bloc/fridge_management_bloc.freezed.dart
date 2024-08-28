// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FridgeManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() fetchFridgeData,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(FridgeSort type) changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? fetchFridgeData,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(FridgeSort type)? changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? fetchFridgeData,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(FridgeSort type)? changeSortType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchFridgeData value) fetchFridgeData,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchFridgeData value)? fetchFridgeData,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchFridgeData value)? fetchFridgeData,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeManagementEventCopyWith<$Res> {
  factory $FridgeManagementEventCopyWith(FridgeManagementEvent value,
          $Res Function(FridgeManagementEvent) then) =
      _$FridgeManagementEventCopyWithImpl<$Res, FridgeManagementEvent>;
}

/// @nodoc
class _$FridgeManagementEventCopyWithImpl<$Res,
        $Val extends FridgeManagementEvent>
    implements $FridgeManagementEventCopyWith<$Res> {
  _$FridgeManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RFUser user});

  $RFUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$FridgeManagementEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$InitImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser,
    ));
  }

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RFUserCopyWith<$Res> get user {
    return $RFUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.user);

  @override
  final RFUser user;

  @override
  String toString() {
    return 'FridgeManagementEvent.init(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() fetchFridgeData,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(FridgeSort type) changeSortType,
  }) {
    return init(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? fetchFridgeData,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(FridgeSort type)? changeSortType,
  }) {
    return init?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? fetchFridgeData,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(FridgeSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchFridgeData value) fetchFridgeData,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchFridgeData value)? fetchFridgeData,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchFridgeData value)? fetchFridgeData,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements FridgeManagementEvent {
  const factory _Init(final RFUser user) = _$InitImpl;

  RFUser get user;

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFridgeDataImplCopyWith<$Res> {
  factory _$$FetchFridgeDataImplCopyWith(_$FetchFridgeDataImpl value,
          $Res Function(_$FetchFridgeDataImpl) then) =
      __$$FetchFridgeDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFridgeDataImplCopyWithImpl<$Res>
    extends _$FridgeManagementEventCopyWithImpl<$Res, _$FetchFridgeDataImpl>
    implements _$$FetchFridgeDataImplCopyWith<$Res> {
  __$$FetchFridgeDataImplCopyWithImpl(
      _$FetchFridgeDataImpl _value, $Res Function(_$FetchFridgeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFridgeDataImpl implements _FetchFridgeData {
  const _$FetchFridgeDataImpl();

  @override
  String toString() {
    return 'FridgeManagementEvent.fetchFridgeData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFridgeDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() fetchFridgeData,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(FridgeSort type) changeSortType,
  }) {
    return fetchFridgeData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? fetchFridgeData,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(FridgeSort type)? changeSortType,
  }) {
    return fetchFridgeData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? fetchFridgeData,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(FridgeSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (fetchFridgeData != null) {
      return fetchFridgeData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchFridgeData value) fetchFridgeData,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return fetchFridgeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchFridgeData value)? fetchFridgeData,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return fetchFridgeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchFridgeData value)? fetchFridgeData,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (fetchFridgeData != null) {
      return fetchFridgeData(this);
    }
    return orElse();
  }
}

abstract class _FetchFridgeData implements FridgeManagementEvent {
  const factory _FetchFridgeData() = _$FetchFridgeDataImpl;
}

/// @nodoc
abstract class _$$ChangeDisplayTypeImplCopyWith<$Res> {
  factory _$$ChangeDisplayTypeImplCopyWith(_$ChangeDisplayTypeImpl value,
          $Res Function(_$ChangeDisplayTypeImpl) then) =
      __$$ChangeDisplayTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SectionDisplayType type});
}

/// @nodoc
class __$$ChangeDisplayTypeImplCopyWithImpl<$Res>
    extends _$FridgeManagementEventCopyWithImpl<$Res, _$ChangeDisplayTypeImpl>
    implements _$$ChangeDisplayTypeImplCopyWith<$Res> {
  __$$ChangeDisplayTypeImplCopyWithImpl(_$ChangeDisplayTypeImpl _value,
      $Res Function(_$ChangeDisplayTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeDisplayTypeImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SectionDisplayType,
    ));
  }
}

/// @nodoc

class _$ChangeDisplayTypeImpl implements _ChangeDisplayType {
  const _$ChangeDisplayTypeImpl(this.type);

  @override
  final SectionDisplayType type;

  @override
  String toString() {
    return 'FridgeManagementEvent.changeDisplayType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDisplayTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDisplayTypeImplCopyWith<_$ChangeDisplayTypeImpl> get copyWith =>
      __$$ChangeDisplayTypeImplCopyWithImpl<_$ChangeDisplayTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() fetchFridgeData,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(FridgeSort type) changeSortType,
  }) {
    return changeDisplayType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? fetchFridgeData,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(FridgeSort type)? changeSortType,
  }) {
    return changeDisplayType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? fetchFridgeData,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(FridgeSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (changeDisplayType != null) {
      return changeDisplayType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchFridgeData value) fetchFridgeData,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return changeDisplayType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchFridgeData value)? fetchFridgeData,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return changeDisplayType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchFridgeData value)? fetchFridgeData,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (changeDisplayType != null) {
      return changeDisplayType(this);
    }
    return orElse();
  }
}

abstract class _ChangeDisplayType implements FridgeManagementEvent {
  const factory _ChangeDisplayType(final SectionDisplayType type) =
      _$ChangeDisplayTypeImpl;

  SectionDisplayType get type;

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeDisplayTypeImplCopyWith<_$ChangeDisplayTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSortTypeImplCopyWith<$Res> {
  factory _$$ChangeSortTypeImplCopyWith(_$ChangeSortTypeImpl value,
          $Res Function(_$ChangeSortTypeImpl) then) =
      __$$ChangeSortTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FridgeSort type});
}

/// @nodoc
class __$$ChangeSortTypeImplCopyWithImpl<$Res>
    extends _$FridgeManagementEventCopyWithImpl<$Res, _$ChangeSortTypeImpl>
    implements _$$ChangeSortTypeImplCopyWith<$Res> {
  __$$ChangeSortTypeImplCopyWithImpl(
      _$ChangeSortTypeImpl _value, $Res Function(_$ChangeSortTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeSortTypeImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FridgeSort,
    ));
  }
}

/// @nodoc

class _$ChangeSortTypeImpl implements _ChangeSortType {
  const _$ChangeSortTypeImpl(this.type);

  @override
  final FridgeSort type;

  @override
  String toString() {
    return 'FridgeManagementEvent.changeSortType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortTypeImplCopyWith<_$ChangeSortTypeImpl> get copyWith =>
      __$$ChangeSortTypeImplCopyWithImpl<_$ChangeSortTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() fetchFridgeData,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(FridgeSort type) changeSortType,
  }) {
    return changeSortType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? fetchFridgeData,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(FridgeSort type)? changeSortType,
  }) {
    return changeSortType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? fetchFridgeData,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(FridgeSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (changeSortType != null) {
      return changeSortType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchFridgeData value) fetchFridgeData,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return changeSortType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchFridgeData value)? fetchFridgeData,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return changeSortType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchFridgeData value)? fetchFridgeData,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (changeSortType != null) {
      return changeSortType(this);
    }
    return orElse();
  }
}

abstract class _ChangeSortType implements FridgeManagementEvent {
  const factory _ChangeSortType(final FridgeSort type) = _$ChangeSortTypeImpl;

  FridgeSort get type;

  /// Create a copy of FridgeManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSortTypeImplCopyWith<_$ChangeSortTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FridgeManagementState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SectionDisplayType get displayType => throw _privateConstructorUsedError;
  FridgeSort get sortType => throw _privateConstructorUsedError;
  RFUser? get user => throw _privateConstructorUsedError;
  List<Fridge>? get fridges => throw _privateConstructorUsedError;
  Fridge? get selectedFridge => throw _privateConstructorUsedError;

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FridgeManagementStateCopyWith<FridgeManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeManagementStateCopyWith<$Res> {
  factory $FridgeManagementStateCopyWith(FridgeManagementState value,
          $Res Function(FridgeManagementState) then) =
      _$FridgeManagementStateCopyWithImpl<$Res, FridgeManagementState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SectionDisplayType displayType,
      FridgeSort sortType,
      RFUser? user,
      List<Fridge>? fridges,
      Fridge? selectedFridge});

  $RFUserCopyWith<$Res>? get user;
  $FridgeCopyWith<$Res>? get selectedFridge;
}

/// @nodoc
class _$FridgeManagementStateCopyWithImpl<$Res,
        $Val extends FridgeManagementState>
    implements $FridgeManagementStateCopyWith<$Res> {
  _$FridgeManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? displayType = null,
    Object? sortType = null,
    Object? user = freezed,
    Object? fridges = freezed,
    Object? selectedFridge = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      displayType: null == displayType
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as SectionDisplayType,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as FridgeSort,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
      fridges: freezed == fridges
          ? _value.fridges
          : fridges // ignore: cast_nullable_to_non_nullable
              as List<Fridge>?,
      selectedFridge: freezed == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge?,
    ) as $Val);
  }

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RFUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $RFUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FridgeCopyWith<$Res>? get selectedFridge {
    if (_value.selectedFridge == null) {
      return null;
    }

    return $FridgeCopyWith<$Res>(_value.selectedFridge!, (value) {
      return _then(_value.copyWith(selectedFridge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FridgeManagementStateImplCopyWith<$Res>
    implements $FridgeManagementStateCopyWith<$Res> {
  factory _$$FridgeManagementStateImplCopyWith(
          _$FridgeManagementStateImpl value,
          $Res Function(_$FridgeManagementStateImpl) then) =
      __$$FridgeManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SectionDisplayType displayType,
      FridgeSort sortType,
      RFUser? user,
      List<Fridge>? fridges,
      Fridge? selectedFridge});

  @override
  $RFUserCopyWith<$Res>? get user;
  @override
  $FridgeCopyWith<$Res>? get selectedFridge;
}

/// @nodoc
class __$$FridgeManagementStateImplCopyWithImpl<$Res>
    extends _$FridgeManagementStateCopyWithImpl<$Res,
        _$FridgeManagementStateImpl>
    implements _$$FridgeManagementStateImplCopyWith<$Res> {
  __$$FridgeManagementStateImplCopyWithImpl(_$FridgeManagementStateImpl _value,
      $Res Function(_$FridgeManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? displayType = null,
    Object? sortType = null,
    Object? user = freezed,
    Object? fridges = freezed,
    Object? selectedFridge = freezed,
  }) {
    return _then(_$FridgeManagementStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      displayType: null == displayType
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as SectionDisplayType,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as FridgeSort,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
      fridges: freezed == fridges
          ? _value._fridges
          : fridges // ignore: cast_nullable_to_non_nullable
              as List<Fridge>?,
      selectedFridge: freezed == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge?,
    ));
  }
}

/// @nodoc

class _$FridgeManagementStateImpl implements _FridgeManagementState {
  const _$FridgeManagementStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.displayType = SectionDisplayType.grid,
      this.sortType = FridgeSort.az,
      this.user,
      final List<Fridge>? fridges,
      this.selectedFridge})
      : _fridges = fridges;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final SectionDisplayType displayType;
  @override
  @JsonKey()
  final FridgeSort sortType;
  @override
  final RFUser? user;
  final List<Fridge>? _fridges;
  @override
  List<Fridge>? get fridges {
    final value = _fridges;
    if (value == null) return null;
    if (_fridges is EqualUnmodifiableListView) return _fridges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Fridge? selectedFridge;

  @override
  String toString() {
    return 'FridgeManagementState(isLoading: $isLoading, isError: $isError, displayType: $displayType, sortType: $sortType, user: $user, fridges: $fridges, selectedFridge: $selectedFridge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FridgeManagementStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.displayType, displayType) ||
                other.displayType == displayType) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._fridges, _fridges) &&
            (identical(other.selectedFridge, selectedFridge) ||
                other.selectedFridge == selectedFridge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      displayType,
      sortType,
      user,
      const DeepCollectionEquality().hash(_fridges),
      selectedFridge);

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FridgeManagementStateImplCopyWith<_$FridgeManagementStateImpl>
      get copyWith => __$$FridgeManagementStateImplCopyWithImpl<
          _$FridgeManagementStateImpl>(this, _$identity);
}

abstract class _FridgeManagementState implements FridgeManagementState {
  const factory _FridgeManagementState(
      {final bool isLoading,
      final bool isError,
      final SectionDisplayType displayType,
      final FridgeSort sortType,
      final RFUser? user,
      final List<Fridge>? fridges,
      final Fridge? selectedFridge}) = _$FridgeManagementStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SectionDisplayType get displayType;
  @override
  FridgeSort get sortType;
  @override
  RFUser? get user;
  @override
  List<Fridge>? get fridges;
  @override
  Fridge? get selectedFridge;

  /// Create a copy of FridgeManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FridgeManagementStateImplCopyWith<_$FridgeManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
