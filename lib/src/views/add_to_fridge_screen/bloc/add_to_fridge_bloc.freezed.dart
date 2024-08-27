// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_fridge_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddToFridgeEvent {
  Fridge get selectedFridge => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToFridgeEventCopyWith<AddToFridgeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFridgeEventCopyWith<$Res> {
  factory $AddToFridgeEventCopyWith(
          AddToFridgeEvent value, $Res Function(AddToFridgeEvent) then) =
      _$AddToFridgeEventCopyWithImpl<$Res, AddToFridgeEvent>;
  @useResult
  $Res call({Fridge selectedFridge});

  $FridgeCopyWith<$Res> get selectedFridge;
}

/// @nodoc
class _$AddToFridgeEventCopyWithImpl<$Res, $Val extends AddToFridgeEvent>
    implements $AddToFridgeEventCopyWith<$Res> {
  _$AddToFridgeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFridge = null,
  }) {
    return _then(_value.copyWith(
      selectedFridge: null == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FridgeCopyWith<$Res> get selectedFridge {
    return $FridgeCopyWith<$Res>(_value.selectedFridge, (value) {
      return _then(_value.copyWith(selectedFridge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $AddToFridgeEventCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fridge selectedFridge});

  @override
  $FridgeCopyWith<$Res> get selectedFridge;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFridge = null,
  }) {
    return _then(_$InitImpl(
      null == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.selectedFridge);

  @override
  final Fridge selectedFridge;

  @override
  String toString() {
    return 'AddToFridgeEvent.init(selectedFridge: $selectedFridge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.selectedFridge, selectedFridge) ||
                other.selectedFridge == selectedFridge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedFridge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
  }) {
    return init(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
  }) {
    return init?.call(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(selectedFridge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AddToFridgeEvent {
  const factory _Init(final Fridge selectedFridge) = _$InitImpl;

  @override
  Fridge get selectedFridge;
  @override
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFridgeImplCopyWith<$Res>
    implements $AddToFridgeEventCopyWith<$Res> {
  factory _$$ChangeFridgeImplCopyWith(
          _$ChangeFridgeImpl value, $Res Function(_$ChangeFridgeImpl) then) =
      __$$ChangeFridgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fridge selectedFridge});

  @override
  $FridgeCopyWith<$Res> get selectedFridge;
}

/// @nodoc
class __$$ChangeFridgeImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$ChangeFridgeImpl>
    implements _$$ChangeFridgeImplCopyWith<$Res> {
  __$$ChangeFridgeImplCopyWithImpl(
      _$ChangeFridgeImpl _value, $Res Function(_$ChangeFridgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFridge = null,
  }) {
    return _then(_$ChangeFridgeImpl(
      null == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge,
    ));
  }
}

/// @nodoc

class _$ChangeFridgeImpl implements _ChangeFridge {
  const _$ChangeFridgeImpl(this.selectedFridge);

  @override
  final Fridge selectedFridge;

  @override
  String toString() {
    return 'AddToFridgeEvent.changeFridge(selectedFridge: $selectedFridge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFridgeImpl &&
            (identical(other.selectedFridge, selectedFridge) ||
                other.selectedFridge == selectedFridge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedFridge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFridgeImplCopyWith<_$ChangeFridgeImpl> get copyWith =>
      __$$ChangeFridgeImplCopyWithImpl<_$ChangeFridgeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
  }) {
    return changeFridge(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
  }) {
    return changeFridge?.call(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    required TResult orElse(),
  }) {
    if (changeFridge != null) {
      return changeFridge(selectedFridge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
  }) {
    return changeFridge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
  }) {
    return changeFridge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    required TResult orElse(),
  }) {
    if (changeFridge != null) {
      return changeFridge(this);
    }
    return orElse();
  }
}

abstract class _ChangeFridge implements AddToFridgeEvent {
  const factory _ChangeFridge(final Fridge selectedFridge) = _$ChangeFridgeImpl;

  @override
  Fridge get selectedFridge;
  @override
  @JsonKey(ignore: true)
  _$$ChangeFridgeImplCopyWith<_$ChangeFridgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddToFridgeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Fridge? get selectedFridge => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToFridgeStateCopyWith<AddToFridgeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFridgeStateCopyWith<$Res> {
  factory $AddToFridgeStateCopyWith(
          AddToFridgeState value, $Res Function(AddToFridgeState) then) =
      _$AddToFridgeStateCopyWithImpl<$Res, AddToFridgeState>;
  @useResult
  $Res call({bool isLoading, bool isError, Fridge? selectedFridge});

  $FridgeCopyWith<$Res>? get selectedFridge;
}

/// @nodoc
class _$AddToFridgeStateCopyWithImpl<$Res, $Val extends AddToFridgeState>
    implements $AddToFridgeStateCopyWith<$Res> {
  _$AddToFridgeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
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
      selectedFridge: freezed == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge?,
    ) as $Val);
  }

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
abstract class _$$AddToFridgeStateImplCopyWith<$Res>
    implements $AddToFridgeStateCopyWith<$Res> {
  factory _$$AddToFridgeStateImplCopyWith(_$AddToFridgeStateImpl value,
          $Res Function(_$AddToFridgeStateImpl) then) =
      __$$AddToFridgeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, Fridge? selectedFridge});

  @override
  $FridgeCopyWith<$Res>? get selectedFridge;
}

/// @nodoc
class __$$AddToFridgeStateImplCopyWithImpl<$Res>
    extends _$AddToFridgeStateCopyWithImpl<$Res, _$AddToFridgeStateImpl>
    implements _$$AddToFridgeStateImplCopyWith<$Res> {
  __$$AddToFridgeStateImplCopyWithImpl(_$AddToFridgeStateImpl _value,
      $Res Function(_$AddToFridgeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? selectedFridge = freezed,
  }) {
    return _then(_$AddToFridgeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFridge: freezed == selectedFridge
          ? _value.selectedFridge
          : selectedFridge // ignore: cast_nullable_to_non_nullable
              as Fridge?,
    ));
  }
}

/// @nodoc

class _$AddToFridgeStateImpl implements _AddToFridgeState {
  const _$AddToFridgeStateImpl(
      {this.isLoading = false, this.isError = false, this.selectedFridge});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  final Fridge? selectedFridge;

  @override
  String toString() {
    return 'AddToFridgeState(isLoading: $isLoading, isError: $isError, selectedFridge: $selectedFridge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFridgeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.selectedFridge, selectedFridge) ||
                other.selectedFridge == selectedFridge));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, selectedFridge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFridgeStateImplCopyWith<_$AddToFridgeStateImpl> get copyWith =>
      __$$AddToFridgeStateImplCopyWithImpl<_$AddToFridgeStateImpl>(
          this, _$identity);
}

abstract class _AddToFridgeState implements AddToFridgeState {
  const factory _AddToFridgeState(
      {final bool isLoading,
      final bool isError,
      final Fridge? selectedFridge}) = _$AddToFridgeStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  Fridge? get selectedFridge;
  @override
  @JsonKey(ignore: true)
  _$$AddToFridgeStateImplCopyWith<_$AddToFridgeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
