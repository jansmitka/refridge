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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function() addToFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function()? addToFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function()? addToFridge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToFridge value) addToFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToFridge value)? addToFridge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToFridge value)? addToFridge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFridgeEventCopyWith<$Res> {
  factory $AddToFridgeEventCopyWith(
          AddToFridgeEvent value, $Res Function(AddToFridgeEvent) then) =
      _$AddToFridgeEventCopyWithImpl<$Res, AddToFridgeEvent>;
}

/// @nodoc
class _$AddToFridgeEventCopyWithImpl<$Res, $Val extends AddToFridgeEvent>
    implements $AddToFridgeEventCopyWith<$Res> {
  _$AddToFridgeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Fridge selectedFridge});

  $FridgeCopyWith<$Res> get selectedFridge;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FridgeCopyWith<$Res> get selectedFridge {
    return $FridgeCopyWith<$Res>(_value.selectedFridge, (value) {
      return _then(_value.copyWith(selectedFridge: value));
    });
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

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function() addToFridge,
  }) {
    return init(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function()? addToFridge,
  }) {
    return init?.call(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function()? addToFridge,
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
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToFridge value) addToFridge,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToFridge value)? addToFridge,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToFridge value)? addToFridge,
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

  Fridge get selectedFridge;

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFridgeImplCopyWith<$Res> {
  factory _$$ChangeFridgeImplCopyWith(
          _$ChangeFridgeImpl value, $Res Function(_$ChangeFridgeImpl) then) =
      __$$ChangeFridgeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Fridge selectedFridge});

  $FridgeCopyWith<$Res> get selectedFridge;
}

/// @nodoc
class __$$ChangeFridgeImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$ChangeFridgeImpl>
    implements _$$ChangeFridgeImplCopyWith<$Res> {
  __$$ChangeFridgeImplCopyWithImpl(
      _$ChangeFridgeImpl _value, $Res Function(_$ChangeFridgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FridgeCopyWith<$Res> get selectedFridge {
    return $FridgeCopyWith<$Res>(_value.selectedFridge, (value) {
      return _then(_value.copyWith(selectedFridge: value));
    });
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

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFridgeImplCopyWith<_$ChangeFridgeImpl> get copyWith =>
      __$$ChangeFridgeImplCopyWithImpl<_$ChangeFridgeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function() addToFridge,
  }) {
    return changeFridge(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function()? addToFridge,
  }) {
    return changeFridge?.call(selectedFridge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function()? addToFridge,
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
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToFridge value) addToFridge,
  }) {
    return changeFridge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToFridge value)? addToFridge,
  }) {
    return changeFridge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToFridge value)? addToFridge,
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

  Fridge get selectedFridge;

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeFridgeImplCopyWith<_$ChangeFridgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGroceryImplCopyWith<$Res> {
  factory _$$AddGroceryImplCopyWith(
          _$AddGroceryImpl value, $Res Function(_$AddGroceryImpl) then) =
      __$$AddGroceryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Grocery grocery});

  $GroceryCopyWith<$Res> get grocery;
}

/// @nodoc
class __$$AddGroceryImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$AddGroceryImpl>
    implements _$$AddGroceryImplCopyWith<$Res> {
  __$$AddGroceryImplCopyWithImpl(
      _$AddGroceryImpl _value, $Res Function(_$AddGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grocery = null,
  }) {
    return _then(_$AddGroceryImpl(
      null == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as Grocery,
    ));
  }

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroceryCopyWith<$Res> get grocery {
    return $GroceryCopyWith<$Res>(_value.grocery, (value) {
      return _then(_value.copyWith(grocery: value));
    });
  }
}

/// @nodoc

class _$AddGroceryImpl implements _AddGrocery {
  const _$AddGroceryImpl(this.grocery);

  @override
  final Grocery grocery;

  @override
  String toString() {
    return 'AddToFridgeEvent.addGrocery(grocery: $grocery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGroceryImpl &&
            (identical(other.grocery, grocery) || other.grocery == grocery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grocery);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroceryImplCopyWith<_$AddGroceryImpl> get copyWith =>
      __$$AddGroceryImplCopyWithImpl<_$AddGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function() addToFridge,
  }) {
    return addGrocery(grocery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function()? addToFridge,
  }) {
    return addGrocery?.call(grocery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function()? addToFridge,
    required TResult orElse(),
  }) {
    if (addGrocery != null) {
      return addGrocery(grocery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToFridge value) addToFridge,
  }) {
    return addGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToFridge value)? addToFridge,
  }) {
    return addGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToFridge value)? addToFridge,
    required TResult orElse(),
  }) {
    if (addGrocery != null) {
      return addGrocery(this);
    }
    return orElse();
  }
}

abstract class _AddGrocery implements AddToFridgeEvent {
  const factory _AddGrocery(final Grocery grocery) = _$AddGroceryImpl;

  Grocery get grocery;

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGroceryImplCopyWith<_$AddGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchGroceryImplCopyWith<$Res> {
  factory _$$SearchGroceryImplCopyWith(
          _$SearchGroceryImpl value, $Res Function(_$SearchGroceryImpl) then) =
      __$$SearchGroceryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String input});
}

/// @nodoc
class __$$SearchGroceryImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$SearchGroceryImpl>
    implements _$$SearchGroceryImplCopyWith<$Res> {
  __$$SearchGroceryImplCopyWithImpl(
      _$SearchGroceryImpl _value, $Res Function(_$SearchGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? input = null,
  }) {
    return _then(_$SearchGroceryImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchGroceryImpl implements _SearchGrocery {
  const _$SearchGroceryImpl(this.context, this.input);

  @override
  final BuildContext context;
  @override
  final String input;

  @override
  String toString() {
    return 'AddToFridgeEvent.searchGrocery(context: $context, input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchGroceryImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, input);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchGroceryImplCopyWith<_$SearchGroceryImpl> get copyWith =>
      __$$SearchGroceryImplCopyWithImpl<_$SearchGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function() addToFridge,
  }) {
    return searchGrocery(context, input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function()? addToFridge,
  }) {
    return searchGrocery?.call(context, input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function()? addToFridge,
    required TResult orElse(),
  }) {
    if (searchGrocery != null) {
      return searchGrocery(context, input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToFridge value) addToFridge,
  }) {
    return searchGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToFridge value)? addToFridge,
  }) {
    return searchGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToFridge value)? addToFridge,
    required TResult orElse(),
  }) {
    if (searchGrocery != null) {
      return searchGrocery(this);
    }
    return orElse();
  }
}

abstract class _SearchGrocery implements AddToFridgeEvent {
  const factory _SearchGrocery(final BuildContext context, final String input) =
      _$SearchGroceryImpl;

  BuildContext get context;
  String get input;

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchGroceryImplCopyWith<_$SearchGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFridgeImplCopyWith<$Res> {
  factory _$$AddToFridgeImplCopyWith(
          _$AddToFridgeImpl value, $Res Function(_$AddToFridgeImpl) then) =
      __$$AddToFridgeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToFridgeImplCopyWithImpl<$Res>
    extends _$AddToFridgeEventCopyWithImpl<$Res, _$AddToFridgeImpl>
    implements _$$AddToFridgeImplCopyWith<$Res> {
  __$$AddToFridgeImplCopyWithImpl(
      _$AddToFridgeImpl _value, $Res Function(_$AddToFridgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToFridgeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToFridgeImpl implements _AddToFridge {
  const _$AddToFridgeImpl();

  @override
  String toString() {
    return 'AddToFridgeEvent.addToFridge()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToFridgeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fridge selectedFridge) init,
    required TResult Function(Fridge selectedFridge) changeFridge,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function() addToFridge,
  }) {
    return addToFridge();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fridge selectedFridge)? init,
    TResult? Function(Fridge selectedFridge)? changeFridge,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function()? addToFridge,
  }) {
    return addToFridge?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fridge selectedFridge)? init,
    TResult Function(Fridge selectedFridge)? changeFridge,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function()? addToFridge,
    required TResult orElse(),
  }) {
    if (addToFridge != null) {
      return addToFridge();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeFridge value) changeFridge,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToFridge value) addToFridge,
  }) {
    return addToFridge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeFridge value)? changeFridge,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToFridge value)? addToFridge,
  }) {
    return addToFridge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeFridge value)? changeFridge,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToFridge value)? addToFridge,
    required TResult orElse(),
  }) {
    if (addToFridge != null) {
      return addToFridge(this);
    }
    return orElse();
  }
}

abstract class _AddToFridge implements AddToFridgeEvent {
  const factory _AddToFridge() = _$AddToFridgeImpl;
}

/// @nodoc
mixin _$AddToFridgeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Fridge? get selectedFridge => throw _privateConstructorUsedError;
  List<Grocery> get selectedGroceries => throw _privateConstructorUsedError;
  List<GroceryTemplate> get searchedGroceries =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddToFridgeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddToFridgeStateCopyWith<AddToFridgeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFridgeStateCopyWith<$Res> {
  factory $AddToFridgeStateCopyWith(
          AddToFridgeState value, $Res Function(AddToFridgeState) then) =
      _$AddToFridgeStateCopyWithImpl<$Res, AddToFridgeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Fridge? selectedFridge,
      List<Grocery> selectedGroceries,
      List<GroceryTemplate> searchedGroceries});

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

  /// Create a copy of AddToFridgeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? selectedFridge = freezed,
    Object? selectedGroceries = null,
    Object? searchedGroceries = null,
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
      selectedGroceries: null == selectedGroceries
          ? _value.selectedGroceries
          : selectedGroceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
      searchedGroceries: null == searchedGroceries
          ? _value.searchedGroceries
          : searchedGroceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryTemplate>,
    ) as $Val);
  }

  /// Create a copy of AddToFridgeState
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
abstract class _$$AddToFridgeStateImplCopyWith<$Res>
    implements $AddToFridgeStateCopyWith<$Res> {
  factory _$$AddToFridgeStateImplCopyWith(_$AddToFridgeStateImpl value,
          $Res Function(_$AddToFridgeStateImpl) then) =
      __$$AddToFridgeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Fridge? selectedFridge,
      List<Grocery> selectedGroceries,
      List<GroceryTemplate> searchedGroceries});

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

  /// Create a copy of AddToFridgeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? selectedFridge = freezed,
    Object? selectedGroceries = null,
    Object? searchedGroceries = null,
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
      selectedGroceries: null == selectedGroceries
          ? _value._selectedGroceries
          : selectedGroceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
      searchedGroceries: null == searchedGroceries
          ? _value._searchedGroceries
          : searchedGroceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryTemplate>,
    ));
  }
}

/// @nodoc

class _$AddToFridgeStateImpl implements _AddToFridgeState {
  const _$AddToFridgeStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.selectedFridge,
      final List<Grocery> selectedGroceries = const [],
      final List<GroceryTemplate> searchedGroceries = const []})
      : _selectedGroceries = selectedGroceries,
        _searchedGroceries = searchedGroceries;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  final Fridge? selectedFridge;
  final List<Grocery> _selectedGroceries;
  @override
  @JsonKey()
  List<Grocery> get selectedGroceries {
    if (_selectedGroceries is EqualUnmodifiableListView)
      return _selectedGroceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedGroceries);
  }

  final List<GroceryTemplate> _searchedGroceries;
  @override
  @JsonKey()
  List<GroceryTemplate> get searchedGroceries {
    if (_searchedGroceries is EqualUnmodifiableListView)
      return _searchedGroceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedGroceries);
  }

  @override
  String toString() {
    return 'AddToFridgeState(isLoading: $isLoading, isError: $isError, selectedFridge: $selectedFridge, selectedGroceries: $selectedGroceries, searchedGroceries: $searchedGroceries)';
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
                other.selectedFridge == selectedFridge) &&
            const DeepCollectionEquality()
                .equals(other._selectedGroceries, _selectedGroceries) &&
            const DeepCollectionEquality()
                .equals(other._searchedGroceries, _searchedGroceries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      selectedFridge,
      const DeepCollectionEquality().hash(_selectedGroceries),
      const DeepCollectionEquality().hash(_searchedGroceries));

  /// Create a copy of AddToFridgeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final Fridge? selectedFridge,
      final List<Grocery> selectedGroceries,
      final List<GroceryTemplate> searchedGroceries}) = _$AddToFridgeStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  Fridge? get selectedFridge;
  @override
  List<Grocery> get selectedGroceries;
  @override
  List<GroceryTemplate> get searchedGroceries;

  /// Create a copy of AddToFridgeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToFridgeStateImplCopyWith<_$AddToFridgeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
