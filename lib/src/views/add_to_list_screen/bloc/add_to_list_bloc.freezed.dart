// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddToListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToListEventCopyWith<$Res> {
  factory $AddToListEventCopyWith(
          AddToListEvent value, $Res Function(AddToListEvent) then) =
      _$AddToListEventCopyWithImpl<$Res, AddToListEvent>;
}

/// @nodoc
class _$AddToListEventCopyWithImpl<$Res, $Val extends AddToListEvent>
    implements $AddToListEventCopyWith<$Res> {
  _$AddToListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingList selectedList});

  $ShoppingListCopyWith<$Res> get selectedList;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedList = null,
  }) {
    return _then(_$InitImpl(
      null == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as ShoppingList,
    ));
  }

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShoppingListCopyWith<$Res> get selectedList {
    return $ShoppingListCopyWith<$Res>(_value.selectedList, (value) {
      return _then(_value.copyWith(selectedList: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.selectedList);

  @override
  final ShoppingList selectedList;

  @override
  String toString() {
    return 'AddToListEvent.init(selectedList: $selectedList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.selectedList, selectedList) ||
                other.selectedList == selectedList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedList);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return init(selectedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return init?.call(selectedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(selectedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AddToListEvent {
  const factory _Init(final ShoppingList selectedList) = _$InitImpl;

  ShoppingList get selectedList;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeListImplCopyWith<$Res> {
  factory _$$ChangeListImplCopyWith(
          _$ChangeListImpl value, $Res Function(_$ChangeListImpl) then) =
      __$$ChangeListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingList selectedList});

  $ShoppingListCopyWith<$Res> get selectedList;
}

/// @nodoc
class __$$ChangeListImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$ChangeListImpl>
    implements _$$ChangeListImplCopyWith<$Res> {
  __$$ChangeListImplCopyWithImpl(
      _$ChangeListImpl _value, $Res Function(_$ChangeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedList = null,
  }) {
    return _then(_$ChangeListImpl(
      null == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as ShoppingList,
    ));
  }

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShoppingListCopyWith<$Res> get selectedList {
    return $ShoppingListCopyWith<$Res>(_value.selectedList, (value) {
      return _then(_value.copyWith(selectedList: value));
    });
  }
}

/// @nodoc

class _$ChangeListImpl implements _ChangeList {
  const _$ChangeListImpl(this.selectedList);

  @override
  final ShoppingList selectedList;

  @override
  String toString() {
    return 'AddToListEvent.changeList(selectedList: $selectedList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeListImpl &&
            (identical(other.selectedList, selectedList) ||
                other.selectedList == selectedList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedList);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeListImplCopyWith<_$ChangeListImpl> get copyWith =>
      __$$ChangeListImplCopyWithImpl<_$ChangeListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return changeList(selectedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return changeList?.call(selectedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (changeList != null) {
      return changeList(selectedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return changeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return changeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (changeList != null) {
      return changeList(this);
    }
    return orElse();
  }
}

abstract class _ChangeList implements AddToListEvent {
  const factory _ChangeList(final ShoppingList selectedList) = _$ChangeListImpl;

  ShoppingList get selectedList;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeListImplCopyWith<_$ChangeListImpl> get copyWith =>
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
    extends _$AddToListEventCopyWithImpl<$Res, _$AddGroceryImpl>
    implements _$$AddGroceryImplCopyWith<$Res> {
  __$$AddGroceryImplCopyWithImpl(
      _$AddGroceryImpl _value, $Res Function(_$AddGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
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

  /// Create a copy of AddToListEvent
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
    return 'AddToListEvent.addGrocery(grocery: $grocery)';
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

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroceryImplCopyWith<_$AddGroceryImpl> get copyWith =>
      __$$AddGroceryImplCopyWithImpl<_$AddGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return addGrocery(grocery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return addGrocery?.call(grocery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
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
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return addGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return addGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (addGrocery != null) {
      return addGrocery(this);
    }
    return orElse();
  }
}

abstract class _AddGrocery implements AddToListEvent {
  const factory _AddGrocery(final Grocery grocery) = _$AddGroceryImpl;

  Grocery get grocery;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGroceryImplCopyWith<_$AddGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditGroceryImplCopyWith<$Res> {
  factory _$$EditGroceryImplCopyWith(
          _$EditGroceryImpl value, $Res Function(_$EditGroceryImpl) then) =
      __$$EditGroceryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Grocery grocery});

  $GroceryCopyWith<$Res> get grocery;
}

/// @nodoc
class __$$EditGroceryImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$EditGroceryImpl>
    implements _$$EditGroceryImplCopyWith<$Res> {
  __$$EditGroceryImplCopyWithImpl(
      _$EditGroceryImpl _value, $Res Function(_$EditGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grocery = null,
  }) {
    return _then(_$EditGroceryImpl(
      null == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as Grocery,
    ));
  }

  /// Create a copy of AddToListEvent
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

class _$EditGroceryImpl implements _EditGrocery {
  const _$EditGroceryImpl(this.grocery);

  @override
  final Grocery grocery;

  @override
  String toString() {
    return 'AddToListEvent.editGrocery(grocery: $grocery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditGroceryImpl &&
            (identical(other.grocery, grocery) || other.grocery == grocery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grocery);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditGroceryImplCopyWith<_$EditGroceryImpl> get copyWith =>
      __$$EditGroceryImplCopyWithImpl<_$EditGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return editGrocery(grocery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return editGrocery?.call(grocery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (editGrocery != null) {
      return editGrocery(grocery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return editGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return editGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (editGrocery != null) {
      return editGrocery(this);
    }
    return orElse();
  }
}

abstract class _EditGrocery implements AddToListEvent {
  const factory _EditGrocery(final Grocery grocery) = _$EditGroceryImpl;

  Grocery get grocery;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditGroceryImplCopyWith<_$EditGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveGroceryImplCopyWith<$Res> {
  factory _$$RemoveGroceryImplCopyWith(
          _$RemoveGroceryImpl value, $Res Function(_$RemoveGroceryImpl) then) =
      __$$RemoveGroceryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Grocery grocery});

  $GroceryCopyWith<$Res> get grocery;
}

/// @nodoc
class __$$RemoveGroceryImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$RemoveGroceryImpl>
    implements _$$RemoveGroceryImplCopyWith<$Res> {
  __$$RemoveGroceryImplCopyWithImpl(
      _$RemoveGroceryImpl _value, $Res Function(_$RemoveGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grocery = null,
  }) {
    return _then(_$RemoveGroceryImpl(
      null == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as Grocery,
    ));
  }

  /// Create a copy of AddToListEvent
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

class _$RemoveGroceryImpl implements _RemoveGrocery {
  const _$RemoveGroceryImpl(this.grocery);

  @override
  final Grocery grocery;

  @override
  String toString() {
    return 'AddToListEvent.removeGrocery(grocery: $grocery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveGroceryImpl &&
            (identical(other.grocery, grocery) || other.grocery == grocery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grocery);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveGroceryImplCopyWith<_$RemoveGroceryImpl> get copyWith =>
      __$$RemoveGroceryImplCopyWithImpl<_$RemoveGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return removeGrocery(grocery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return removeGrocery?.call(grocery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (removeGrocery != null) {
      return removeGrocery(grocery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return removeGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return removeGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (removeGrocery != null) {
      return removeGrocery(this);
    }
    return orElse();
  }
}

abstract class _RemoveGrocery implements AddToListEvent {
  const factory _RemoveGrocery(final Grocery grocery) = _$RemoveGroceryImpl;

  Grocery get grocery;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveGroceryImplCopyWith<_$RemoveGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllGroceriesImplCopyWith<$Res> {
  factory _$$RemoveAllGroceriesImplCopyWith(_$RemoveAllGroceriesImpl value,
          $Res Function(_$RemoveAllGroceriesImpl) then) =
      __$$RemoveAllGroceriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllGroceriesImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$RemoveAllGroceriesImpl>
    implements _$$RemoveAllGroceriesImplCopyWith<$Res> {
  __$$RemoveAllGroceriesImplCopyWithImpl(_$RemoveAllGroceriesImpl _value,
      $Res Function(_$RemoveAllGroceriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveAllGroceriesImpl implements _RemoveAllGroceries {
  const _$RemoveAllGroceriesImpl();

  @override
  String toString() {
    return 'AddToListEvent.removeAllGroceries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAllGroceriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return removeAllGroceries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return removeAllGroceries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (removeAllGroceries != null) {
      return removeAllGroceries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return removeAllGroceries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return removeAllGroceries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (removeAllGroceries != null) {
      return removeAllGroceries(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllGroceries implements AddToListEvent {
  const factory _RemoveAllGroceries() = _$RemoveAllGroceriesImpl;
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListSort sort});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(_$SortImpl(
      freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ListSort,
    ));
  }
}

/// @nodoc

class _$SortImpl implements _Sort {
  const _$SortImpl(this.sort);

  @override
  final ListSort sort;

  @override
  String toString() {
    return 'AddToListEvent.sort(sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            const DeepCollectionEquality().equals(other.sort, sort));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sort));

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return sort(this.sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return sort?.call(this.sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this.sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return sort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return sort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this);
    }
    return orElse();
  }
}

abstract class _Sort implements AddToListEvent {
  const factory _Sort(final ListSort sort) = _$SortImpl;

  ListSort get sort;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
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
    extends _$AddToListEventCopyWithImpl<$Res, _$SearchGroceryImpl>
    implements _$$SearchGroceryImplCopyWith<$Res> {
  __$$SearchGroceryImplCopyWithImpl(
      _$SearchGroceryImpl _value, $Res Function(_$SearchGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
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
    return 'AddToListEvent.searchGrocery(context: $context, input: $input)';
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

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchGroceryImplCopyWith<_$SearchGroceryImpl> get copyWith =>
      __$$SearchGroceryImplCopyWithImpl<_$SearchGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return searchGrocery(context, input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return searchGrocery?.call(context, input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
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
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return searchGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return searchGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (searchGrocery != null) {
      return searchGrocery(this);
    }
    return orElse();
  }
}

abstract class _SearchGrocery implements AddToListEvent {
  const factory _SearchGrocery(final BuildContext context, final String input) =
      _$SearchGroceryImpl;

  BuildContext get context;
  String get input;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchGroceryImplCopyWith<_$SearchGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToListImplCopyWith<$Res> {
  factory _$$AddToListImplCopyWith(
          _$AddToListImpl value, $Res Function(_$AddToListImpl) then) =
      __$$AddToListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$AddToListImplCopyWithImpl<$Res>
    extends _$AddToListEventCopyWithImpl<$Res, _$AddToListImpl>
    implements _$$AddToListImplCopyWith<$Res> {
  __$$AddToListImplCopyWithImpl(
      _$AddToListImpl _value, $Res Function(_$AddToListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$AddToListImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddToListImpl implements _AddToList {
  const _$AddToListImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AddToListEvent.addToList(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToListImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToListImplCopyWith<_$AddToListImpl> get copyWith =>
      __$$AddToListImplCopyWithImpl<_$AddToListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingList selectedList) init,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) addGrocery,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) removeGrocery,
    required TResult Function() removeAllGroceries,
    required TResult Function(ListSort sort) sort,
    required TResult Function(BuildContext context, String input) searchGrocery,
    required TResult Function(BuildContext context) addToList,
  }) {
    return addToList(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingList selectedList)? init,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? addGrocery,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? removeGrocery,
    TResult? Function()? removeAllGroceries,
    TResult? Function(ListSort sort)? sort,
    TResult? Function(BuildContext context, String input)? searchGrocery,
    TResult? Function(BuildContext context)? addToList,
  }) {
    return addToList?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingList selectedList)? init,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? addGrocery,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? removeGrocery,
    TResult Function()? removeAllGroceries,
    TResult Function(ListSort sort)? sort,
    TResult Function(BuildContext context, String input)? searchGrocery,
    TResult Function(BuildContext context)? addToList,
    required TResult orElse(),
  }) {
    if (addToList != null) {
      return addToList(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_AddGrocery value) addGrocery,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_RemoveGrocery value) removeGrocery,
    required TResult Function(_RemoveAllGroceries value) removeAllGroceries,
    required TResult Function(_Sort value) sort,
    required TResult Function(_SearchGrocery value) searchGrocery,
    required TResult Function(_AddToList value) addToList,
  }) {
    return addToList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_AddGrocery value)? addGrocery,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_RemoveGrocery value)? removeGrocery,
    TResult? Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_SearchGrocery value)? searchGrocery,
    TResult? Function(_AddToList value)? addToList,
  }) {
    return addToList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_AddGrocery value)? addGrocery,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_RemoveGrocery value)? removeGrocery,
    TResult Function(_RemoveAllGroceries value)? removeAllGroceries,
    TResult Function(_Sort value)? sort,
    TResult Function(_SearchGrocery value)? searchGrocery,
    TResult Function(_AddToList value)? addToList,
    required TResult orElse(),
  }) {
    if (addToList != null) {
      return addToList(this);
    }
    return orElse();
  }
}

abstract class _AddToList implements AddToListEvent {
  const factory _AddToList(final BuildContext context) = _$AddToListImpl;

  BuildContext get context;

  /// Create a copy of AddToListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToListImplCopyWith<_$AddToListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddToListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get noResults => throw _privateConstructorUsedError;
  ShoppingList? get selectedList => throw _privateConstructorUsedError;
  List<Grocery> get selectedGroceries => throw _privateConstructorUsedError;
  List<GroceryTemplate> get searchedGroceries =>
      throw _privateConstructorUsedError;
  ListSort get selectedSort => throw _privateConstructorUsedError;

  /// Create a copy of AddToListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddToListStateCopyWith<AddToListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToListStateCopyWith<$Res> {
  factory $AddToListStateCopyWith(
          AddToListState value, $Res Function(AddToListState) then) =
      _$AddToListStateCopyWithImpl<$Res, AddToListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isCompleted,
      bool noResults,
      ShoppingList? selectedList,
      List<Grocery> selectedGroceries,
      List<GroceryTemplate> searchedGroceries,
      ListSort selectedSort});

  $ShoppingListCopyWith<$Res>? get selectedList;
}

/// @nodoc
class _$AddToListStateCopyWithImpl<$Res, $Val extends AddToListState>
    implements $AddToListStateCopyWith<$Res> {
  _$AddToListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddToListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isCompleted = null,
    Object? noResults = null,
    Object? selectedList = freezed,
    Object? selectedGroceries = null,
    Object? searchedGroceries = null,
    Object? selectedSort = freezed,
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
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      noResults: null == noResults
          ? _value.noResults
          : noResults // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedList: freezed == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as ShoppingList?,
      selectedGroceries: null == selectedGroceries
          ? _value.selectedGroceries
          : selectedGroceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
      searchedGroceries: null == searchedGroceries
          ? _value.searchedGroceries
          : searchedGroceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryTemplate>,
      selectedSort: freezed == selectedSort
          ? _value.selectedSort
          : selectedSort // ignore: cast_nullable_to_non_nullable
              as ListSort,
    ) as $Val);
  }

  /// Create a copy of AddToListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShoppingListCopyWith<$Res>? get selectedList {
    if (_value.selectedList == null) {
      return null;
    }

    return $ShoppingListCopyWith<$Res>(_value.selectedList!, (value) {
      return _then(_value.copyWith(selectedList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddToListStateImplCopyWith<$Res>
    implements $AddToListStateCopyWith<$Res> {
  factory _$$AddToListStateImplCopyWith(_$AddToListStateImpl value,
          $Res Function(_$AddToListStateImpl) then) =
      __$$AddToListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isCompleted,
      bool noResults,
      ShoppingList? selectedList,
      List<Grocery> selectedGroceries,
      List<GroceryTemplate> searchedGroceries,
      ListSort selectedSort});

  @override
  $ShoppingListCopyWith<$Res>? get selectedList;
}

/// @nodoc
class __$$AddToListStateImplCopyWithImpl<$Res>
    extends _$AddToListStateCopyWithImpl<$Res, _$AddToListStateImpl>
    implements _$$AddToListStateImplCopyWith<$Res> {
  __$$AddToListStateImplCopyWithImpl(
      _$AddToListStateImpl _value, $Res Function(_$AddToListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddToListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isCompleted = null,
    Object? noResults = null,
    Object? selectedList = freezed,
    Object? selectedGroceries = null,
    Object? searchedGroceries = null,
    Object? selectedSort = freezed,
  }) {
    return _then(_$AddToListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      noResults: null == noResults
          ? _value.noResults
          : noResults // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedList: freezed == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as ShoppingList?,
      selectedGroceries: null == selectedGroceries
          ? _value._selectedGroceries
          : selectedGroceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
      searchedGroceries: null == searchedGroceries
          ? _value._searchedGroceries
          : searchedGroceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryTemplate>,
      selectedSort: freezed == selectedSort
          ? _value.selectedSort
          : selectedSort // ignore: cast_nullable_to_non_nullable
              as ListSort,
    ));
  }
}

/// @nodoc

class _$AddToListStateImpl implements _AddToListState {
  const _$AddToListStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.isCompleted = false,
      this.noResults = false,
      this.selectedList,
      final List<Grocery> selectedGroceries = const [],
      final List<GroceryTemplate> searchedGroceries = const [],
      this.selectedSort = ListSort.az})
      : _selectedGroceries = selectedGroceries,
        _searchedGroceries = searchedGroceries;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final bool noResults;
  @override
  final ShoppingList? selectedList;
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
  @JsonKey()
  final ListSort selectedSort;

  @override
  String toString() {
    return 'AddToListState(isLoading: $isLoading, isError: $isError, isCompleted: $isCompleted, noResults: $noResults, selectedList: $selectedList, selectedGroceries: $selectedGroceries, searchedGroceries: $searchedGroceries, selectedSort: $selectedSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.noResults, noResults) ||
                other.noResults == noResults) &&
            (identical(other.selectedList, selectedList) ||
                other.selectedList == selectedList) &&
            const DeepCollectionEquality()
                .equals(other._selectedGroceries, _selectedGroceries) &&
            const DeepCollectionEquality()
                .equals(other._searchedGroceries, _searchedGroceries) &&
            const DeepCollectionEquality()
                .equals(other.selectedSort, selectedSort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      isCompleted,
      noResults,
      selectedList,
      const DeepCollectionEquality().hash(_selectedGroceries),
      const DeepCollectionEquality().hash(_searchedGroceries),
      const DeepCollectionEquality().hash(selectedSort));

  /// Create a copy of AddToListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToListStateImplCopyWith<_$AddToListStateImpl> get copyWith =>
      __$$AddToListStateImplCopyWithImpl<_$AddToListStateImpl>(
          this, _$identity);
}

abstract class _AddToListState implements AddToListState {
  const factory _AddToListState(
      {final bool isLoading,
      final bool isError,
      final bool isCompleted,
      final bool noResults,
      final ShoppingList? selectedList,
      final List<Grocery> selectedGroceries,
      final List<GroceryTemplate> searchedGroceries,
      final ListSort selectedSort}) = _$AddToListStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isCompleted;
  @override
  bool get noResults;
  @override
  ShoppingList? get selectedList;
  @override
  List<Grocery> get selectedGroceries;
  @override
  List<GroceryTemplate> get searchedGroceries;
  @override
  ListSort get selectedSort;

  /// Create a copy of AddToListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToListStateImplCopyWith<_$AddToListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
