// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_list_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShoppingListManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListManagementEventCopyWith<$Res> {
  factory $ShoppingListManagementEventCopyWith(
          ShoppingListManagementEvent value,
          $Res Function(ShoppingListManagementEvent) then) =
      _$ShoppingListManagementEventCopyWithImpl<$Res,
          ShoppingListManagementEvent>;
}

/// @nodoc
class _$ShoppingListManagementEventCopyWithImpl<$Res,
        $Val extends ShoppingListManagementEvent>
    implements $ShoppingListManagementEventCopyWith<$Res> {
  _$ShoppingListManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingListManagementEvent
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
    extends _$ShoppingListManagementEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
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

  /// Create a copy of ShoppingListManagementEvent
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
    return 'ShoppingListManagementEvent.init(user: $user)';
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

  /// Create a copy of ShoppingListManagementEvent
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
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return init(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return init?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
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
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
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

abstract class _Init implements ShoppingListManagementEvent {
  const factory _Init(final RFUser user) = _$InitImpl;

  RFUser get user;

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadImplCopyWith<$Res> {
  factory _$$ReloadImplCopyWith(
          _$ReloadImpl value, $Res Function(_$ReloadImpl) then) =
      __$$ReloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadImplCopyWithImpl<$Res>
    extends _$ShoppingListManagementEventCopyWithImpl<$Res, _$ReloadImpl>
    implements _$$ReloadImplCopyWith<$Res> {
  __$$ReloadImplCopyWithImpl(
      _$ReloadImpl _value, $Res Function(_$ReloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReloadImpl implements _Reload {
  const _$ReloadImpl();

  @override
  String toString() {
    return 'ShoppingListManagementEvent.reload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload implements ShoppingListManagementEvent {
  const factory _Reload() = _$ReloadImpl;
}

/// @nodoc
abstract class _$$FetchListDataImplCopyWith<$Res> {
  factory _$$FetchListDataImplCopyWith(
          _$FetchListDataImpl value, $Res Function(_$FetchListDataImpl) then) =
      __$$FetchListDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchListDataImplCopyWithImpl<$Res>
    extends _$ShoppingListManagementEventCopyWithImpl<$Res, _$FetchListDataImpl>
    implements _$$FetchListDataImplCopyWith<$Res> {
  __$$FetchListDataImplCopyWithImpl(
      _$FetchListDataImpl _value, $Res Function(_$FetchListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchListDataImpl implements _FetchListData {
  const _$FetchListDataImpl();

  @override
  String toString() {
    return 'ShoppingListManagementEvent.fetchListData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchListDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return fetchListData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return fetchListData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (fetchListData != null) {
      return fetchListData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return fetchListData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return fetchListData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (fetchListData != null) {
      return fetchListData(this);
    }
    return orElse();
  }
}

abstract class _FetchListData implements ShoppingListManagementEvent {
  const factory _FetchListData() = _$FetchListDataImpl;
}

/// @nodoc
abstract class _$$FetchGroceriesImplCopyWith<$Res> {
  factory _$$FetchGroceriesImplCopyWith(_$FetchGroceriesImpl value,
          $Res Function(_$FetchGroceriesImpl) then) =
      __$$FetchGroceriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchGroceriesImplCopyWithImpl<$Res>
    extends _$ShoppingListManagementEventCopyWithImpl<$Res,
        _$FetchGroceriesImpl> implements _$$FetchGroceriesImplCopyWith<$Res> {
  __$$FetchGroceriesImplCopyWithImpl(
      _$FetchGroceriesImpl _value, $Res Function(_$FetchGroceriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchGroceriesImpl implements _FetchGroceries {
  const _$FetchGroceriesImpl();

  @override
  String toString() {
    return 'ShoppingListManagementEvent.fetchGroceries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchGroceriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return fetchGroceries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return fetchGroceries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (fetchGroceries != null) {
      return fetchGroceries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return fetchGroceries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return fetchGroceries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (fetchGroceries != null) {
      return fetchGroceries(this);
    }
    return orElse();
  }
}

abstract class _FetchGroceries implements ShoppingListManagementEvent {
  const factory _FetchGroceries() = _$FetchGroceriesImpl;
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
    extends _$ShoppingListManagementEventCopyWithImpl<$Res, _$ChangeListImpl>
    implements _$$ChangeListImplCopyWith<$Res> {
  __$$ChangeListImplCopyWithImpl(
      _$ChangeListImpl _value, $Res Function(_$ChangeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
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

  /// Create a copy of ShoppingListManagementEvent
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
    return 'ShoppingListManagementEvent.changeList(selectedList: $selectedList)';
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

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeListImplCopyWith<_$ChangeListImpl> get copyWith =>
      __$$ChangeListImplCopyWithImpl<_$ChangeListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return changeList(selectedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return changeList?.call(selectedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
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
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return changeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return changeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (changeList != null) {
      return changeList(this);
    }
    return orElse();
  }
}

abstract class _ChangeList implements ShoppingListManagementEvent {
  const factory _ChangeList(final ShoppingList selectedList) = _$ChangeListImpl;

  ShoppingList get selectedList;

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeListImplCopyWith<_$ChangeListImpl> get copyWith =>
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
    extends _$ShoppingListManagementEventCopyWithImpl<$Res, _$EditGroceryImpl>
    implements _$$EditGroceryImplCopyWith<$Res> {
  __$$EditGroceryImplCopyWithImpl(
      _$EditGroceryImpl _value, $Res Function(_$EditGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
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

  /// Create a copy of ShoppingListManagementEvent
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
    return 'ShoppingListManagementEvent.editGrocery(grocery: $grocery)';
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

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditGroceryImplCopyWith<_$EditGroceryImpl> get copyWith =>
      __$$EditGroceryImplCopyWithImpl<_$EditGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return editGrocery(grocery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return editGrocery?.call(grocery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
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
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return editGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return editGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (editGrocery != null) {
      return editGrocery(this);
    }
    return orElse();
  }
}

abstract class _EditGrocery implements ShoppingListManagementEvent {
  const factory _EditGrocery(final Grocery grocery) = _$EditGroceryImpl;

  Grocery get grocery;

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditGroceryImplCopyWith<_$EditGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGroceryImplCopyWith<$Res> {
  factory _$$DeleteGroceryImplCopyWith(
          _$DeleteGroceryImpl value, $Res Function(_$DeleteGroceryImpl) then) =
      __$$DeleteGroceryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Grocery grocery});

  $GroceryCopyWith<$Res> get grocery;
}

/// @nodoc
class __$$DeleteGroceryImplCopyWithImpl<$Res>
    extends _$ShoppingListManagementEventCopyWithImpl<$Res, _$DeleteGroceryImpl>
    implements _$$DeleteGroceryImplCopyWith<$Res> {
  __$$DeleteGroceryImplCopyWithImpl(
      _$DeleteGroceryImpl _value, $Res Function(_$DeleteGroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grocery = null,
  }) {
    return _then(_$DeleteGroceryImpl(
      null == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as Grocery,
    ));
  }

  /// Create a copy of ShoppingListManagementEvent
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

class _$DeleteGroceryImpl implements _DeleteGrocery {
  const _$DeleteGroceryImpl(this.grocery);

  @override
  final Grocery grocery;

  @override
  String toString() {
    return 'ShoppingListManagementEvent.deleteGrocery(grocery: $grocery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGroceryImpl &&
            (identical(other.grocery, grocery) || other.grocery == grocery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grocery);

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGroceryImplCopyWith<_$DeleteGroceryImpl> get copyWith =>
      __$$DeleteGroceryImplCopyWithImpl<_$DeleteGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser user) init,
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return deleteGrocery(grocery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return deleteGrocery?.call(grocery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
    required TResult orElse(),
  }) {
    if (deleteGrocery != null) {
      return deleteGrocery(grocery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return deleteGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return deleteGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
    TResult Function(_ChangeDisplayType value)? changeDisplayType,
    TResult Function(_ChangeSortType value)? changeSortType,
    required TResult orElse(),
  }) {
    if (deleteGrocery != null) {
      return deleteGrocery(this);
    }
    return orElse();
  }
}

abstract class _DeleteGrocery implements ShoppingListManagementEvent {
  const factory _DeleteGrocery(final Grocery grocery) = _$DeleteGroceryImpl;

  Grocery get grocery;

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteGroceryImplCopyWith<_$DeleteGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ShoppingListManagementEventCopyWithImpl<$Res,
        _$ChangeDisplayTypeImpl>
    implements _$$ChangeDisplayTypeImplCopyWith<$Res> {
  __$$ChangeDisplayTypeImplCopyWithImpl(_$ChangeDisplayTypeImpl _value,
      $Res Function(_$ChangeDisplayTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
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
    return 'ShoppingListManagementEvent.changeDisplayType(type: $type)';
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

  /// Create a copy of ShoppingListManagementEvent
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
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return changeDisplayType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return changeDisplayType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
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
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return changeDisplayType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return changeDisplayType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
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

abstract class _ChangeDisplayType implements ShoppingListManagementEvent {
  const factory _ChangeDisplayType(final SectionDisplayType type) =
      _$ChangeDisplayTypeImpl;

  SectionDisplayType get type;

  /// Create a copy of ShoppingListManagementEvent
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
  $Res call({ListSort type});
}

/// @nodoc
class __$$ChangeSortTypeImplCopyWithImpl<$Res>
    extends _$ShoppingListManagementEventCopyWithImpl<$Res,
        _$ChangeSortTypeImpl> implements _$$ChangeSortTypeImplCopyWith<$Res> {
  __$$ChangeSortTypeImplCopyWithImpl(
      _$ChangeSortTypeImpl _value, $Res Function(_$ChangeSortTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$ChangeSortTypeImpl(
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListSort,
    ));
  }
}

/// @nodoc

class _$ChangeSortTypeImpl implements _ChangeSortType {
  const _$ChangeSortTypeImpl(this.type);

  @override
  final ListSort type;

  @override
  String toString() {
    return 'ShoppingListManagementEvent.changeSortType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortTypeImpl &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  /// Create a copy of ShoppingListManagementEvent
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
    required TResult Function() reload,
    required TResult Function() fetchListData,
    required TResult Function() fetchGroceries,
    required TResult Function(ShoppingList selectedList) changeList,
    required TResult Function(Grocery grocery) editGrocery,
    required TResult Function(Grocery grocery) deleteGrocery,
    required TResult Function(SectionDisplayType type) changeDisplayType,
    required TResult Function(ListSort type) changeSortType,
  }) {
    return changeSortType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser user)? init,
    TResult? Function()? reload,
    TResult? Function()? fetchListData,
    TResult? Function()? fetchGroceries,
    TResult? Function(ShoppingList selectedList)? changeList,
    TResult? Function(Grocery grocery)? editGrocery,
    TResult? Function(Grocery grocery)? deleteGrocery,
    TResult? Function(SectionDisplayType type)? changeDisplayType,
    TResult? Function(ListSort type)? changeSortType,
  }) {
    return changeSortType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser user)? init,
    TResult Function()? reload,
    TResult Function()? fetchListData,
    TResult Function()? fetchGroceries,
    TResult Function(ShoppingList selectedList)? changeList,
    TResult Function(Grocery grocery)? editGrocery,
    TResult Function(Grocery grocery)? deleteGrocery,
    TResult Function(SectionDisplayType type)? changeDisplayType,
    TResult Function(ListSort type)? changeSortType,
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
    required TResult Function(_Reload value) reload,
    required TResult Function(_FetchListData value) fetchListData,
    required TResult Function(_FetchGroceries value) fetchGroceries,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_EditGrocery value) editGrocery,
    required TResult Function(_DeleteGrocery value) deleteGrocery,
    required TResult Function(_ChangeDisplayType value) changeDisplayType,
    required TResult Function(_ChangeSortType value) changeSortType,
  }) {
    return changeSortType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_FetchListData value)? fetchListData,
    TResult? Function(_FetchGroceries value)? fetchGroceries,
    TResult? Function(_ChangeList value)? changeList,
    TResult? Function(_EditGrocery value)? editGrocery,
    TResult? Function(_DeleteGrocery value)? deleteGrocery,
    TResult? Function(_ChangeDisplayType value)? changeDisplayType,
    TResult? Function(_ChangeSortType value)? changeSortType,
  }) {
    return changeSortType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reload value)? reload,
    TResult Function(_FetchListData value)? fetchListData,
    TResult Function(_FetchGroceries value)? fetchGroceries,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_EditGrocery value)? editGrocery,
    TResult Function(_DeleteGrocery value)? deleteGrocery,
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

abstract class _ChangeSortType implements ShoppingListManagementEvent {
  const factory _ChangeSortType(final ListSort type) = _$ChangeSortTypeImpl;

  ListSort get type;

  /// Create a copy of ShoppingListManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSortTypeImplCopyWith<_$ChangeSortTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingListManagementState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SectionDisplayType get displayType => throw _privateConstructorUsedError;
  ListSort get sortType => throw _privateConstructorUsedError;
  RFUser? get user => throw _privateConstructorUsedError;
  List<ShoppingList>? get lists => throw _privateConstructorUsedError;
  ShoppingList? get selectedList => throw _privateConstructorUsedError;
  List<Grocery> get groceries => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingListManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingListManagementStateCopyWith<ShoppingListManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListManagementStateCopyWith<$Res> {
  factory $ShoppingListManagementStateCopyWith(
          ShoppingListManagementState value,
          $Res Function(ShoppingListManagementState) then) =
      _$ShoppingListManagementStateCopyWithImpl<$Res,
          ShoppingListManagementState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SectionDisplayType displayType,
      ListSort sortType,
      RFUser? user,
      List<ShoppingList>? lists,
      ShoppingList? selectedList,
      List<Grocery> groceries});

  $RFUserCopyWith<$Res>? get user;
  $ShoppingListCopyWith<$Res>? get selectedList;
}

/// @nodoc
class _$ShoppingListManagementStateCopyWithImpl<$Res,
        $Val extends ShoppingListManagementState>
    implements $ShoppingListManagementStateCopyWith<$Res> {
  _$ShoppingListManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingListManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? displayType = null,
    Object? sortType = freezed,
    Object? user = freezed,
    Object? lists = freezed,
    Object? selectedList = freezed,
    Object? groceries = null,
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
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as ListSort,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
      lists: freezed == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<ShoppingList>?,
      selectedList: freezed == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as ShoppingList?,
      groceries: null == groceries
          ? _value.groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
    ) as $Val);
  }

  /// Create a copy of ShoppingListManagementState
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

  /// Create a copy of ShoppingListManagementState
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
abstract class _$$ShoppingListManagementStateImplCopyWith<$Res>
    implements $ShoppingListManagementStateCopyWith<$Res> {
  factory _$$ShoppingListManagementStateImplCopyWith(
          _$ShoppingListManagementStateImpl value,
          $Res Function(_$ShoppingListManagementStateImpl) then) =
      __$$ShoppingListManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SectionDisplayType displayType,
      ListSort sortType,
      RFUser? user,
      List<ShoppingList>? lists,
      ShoppingList? selectedList,
      List<Grocery> groceries});

  @override
  $RFUserCopyWith<$Res>? get user;
  @override
  $ShoppingListCopyWith<$Res>? get selectedList;
}

/// @nodoc
class __$$ShoppingListManagementStateImplCopyWithImpl<$Res>
    extends _$ShoppingListManagementStateCopyWithImpl<$Res,
        _$ShoppingListManagementStateImpl>
    implements _$$ShoppingListManagementStateImplCopyWith<$Res> {
  __$$ShoppingListManagementStateImplCopyWithImpl(
      _$ShoppingListManagementStateImpl _value,
      $Res Function(_$ShoppingListManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingListManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? displayType = null,
    Object? sortType = freezed,
    Object? user = freezed,
    Object? lists = freezed,
    Object? selectedList = freezed,
    Object? groceries = null,
  }) {
    return _then(_$ShoppingListManagementStateImpl(
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
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as ListSort,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
      lists: freezed == lists
          ? _value._lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<ShoppingList>?,
      selectedList: freezed == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as ShoppingList?,
      groceries: null == groceries
          ? _value._groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
    ));
  }
}

/// @nodoc

class _$ShoppingListManagementStateImpl
    implements _ShoppingListManagementState {
  const _$ShoppingListManagementStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.displayType = SectionDisplayType.grid,
      this.sortType = ListSort.az,
      this.user,
      final List<ShoppingList>? lists,
      this.selectedList,
      final List<Grocery> groceries = const []})
      : _lists = lists,
        _groceries = groceries;

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
  final ListSort sortType;
  @override
  final RFUser? user;
  final List<ShoppingList>? _lists;
  @override
  List<ShoppingList>? get lists {
    final value = _lists;
    if (value == null) return null;
    if (_lists is EqualUnmodifiableListView) return _lists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ShoppingList? selectedList;
  final List<Grocery> _groceries;
  @override
  @JsonKey()
  List<Grocery> get groceries {
    if (_groceries is EqualUnmodifiableListView) return _groceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceries);
  }

  @override
  String toString() {
    return 'ShoppingListManagementState(isLoading: $isLoading, isError: $isError, displayType: $displayType, sortType: $sortType, user: $user, lists: $lists, selectedList: $selectedList, groceries: $groceries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingListManagementStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.displayType, displayType) ||
                other.displayType == displayType) &&
            const DeepCollectionEquality().equals(other.sortType, sortType) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._lists, _lists) &&
            (identical(other.selectedList, selectedList) ||
                other.selectedList == selectedList) &&
            const DeepCollectionEquality()
                .equals(other._groceries, _groceries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      displayType,
      const DeepCollectionEquality().hash(sortType),
      user,
      const DeepCollectionEquality().hash(_lists),
      selectedList,
      const DeepCollectionEquality().hash(_groceries));

  /// Create a copy of ShoppingListManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingListManagementStateImplCopyWith<_$ShoppingListManagementStateImpl>
      get copyWith => __$$ShoppingListManagementStateImplCopyWithImpl<
          _$ShoppingListManagementStateImpl>(this, _$identity);
}

abstract class _ShoppingListManagementState
    implements ShoppingListManagementState {
  const factory _ShoppingListManagementState(
      {final bool isLoading,
      final bool isError,
      final SectionDisplayType displayType,
      final ListSort sortType,
      final RFUser? user,
      final List<ShoppingList>? lists,
      final ShoppingList? selectedList,
      final List<Grocery> groceries}) = _$ShoppingListManagementStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SectionDisplayType get displayType;
  @override
  ListSort get sortType;
  @override
  RFUser? get user;
  @override
  List<ShoppingList>? get lists;
  @override
  ShoppingList? get selectedList;
  @override
  List<Grocery> get groceries;

  /// Create a copy of ShoppingListManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingListManagementStateImplCopyWith<_$ShoppingListManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
