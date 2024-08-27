// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) getUserData,
    required TResult Function(ScreenState screenState) setScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? getUserData,
    TResult? Function(ScreenState screenState)? setScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? getUserData,
    TResult Function(ScreenState screenState)? setScreenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_SetScreenState value) setScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_SetScreenState value)? setScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_SetScreenState value)? setScreenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'MainEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) getUserData,
    required TResult Function(ScreenState screenState) setScreenState,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? getUserData,
    TResult? Function(ScreenState screenState)? setScreenState,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? getUserData,
    TResult Function(ScreenState screenState)? setScreenState,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_SetScreenState value) setScreenState,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_SetScreenState value)? setScreenState,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_SetScreenState value)? setScreenState,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MainEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$GetUserDataImplCopyWith<$Res> {
  factory _$$GetUserDataImplCopyWith(
          _$GetUserDataImpl value, $Res Function(_$GetUserDataImpl) then) =
      __$$GetUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$GetUserDataImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetUserDataImpl>
    implements _$$GetUserDataImplCopyWith<$Res> {
  __$$GetUserDataImplCopyWithImpl(
      _$GetUserDataImpl _value, $Res Function(_$GetUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GetUserDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$GetUserDataImpl implements _GetUserData {
  const _$GetUserDataImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'MainEvent.getUserData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataImplCopyWith<_$GetUserDataImpl> get copyWith =>
      __$$GetUserDataImplCopyWithImpl<_$GetUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) getUserData,
    required TResult Function(ScreenState screenState) setScreenState,
  }) {
    return getUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? getUserData,
    TResult? Function(ScreenState screenState)? setScreenState,
  }) {
    return getUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? getUserData,
    TResult Function(ScreenState screenState)? setScreenState,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_SetScreenState value) setScreenState,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_SetScreenState value)? setScreenState,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_SetScreenState value)? setScreenState,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class _GetUserData implements MainEvent {
  const factory _GetUserData(final User user) = _$GetUserDataImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$GetUserDataImplCopyWith<_$GetUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetScreenStateImplCopyWith<$Res> {
  factory _$$SetScreenStateImplCopyWith(_$SetScreenStateImpl value,
          $Res Function(_$SetScreenStateImpl) then) =
      __$$SetScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScreenState screenState});
}

/// @nodoc
class __$$SetScreenStateImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SetScreenStateImpl>
    implements _$$SetScreenStateImplCopyWith<$Res> {
  __$$SetScreenStateImplCopyWithImpl(
      _$SetScreenStateImpl _value, $Res Function(_$SetScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenState = null,
  }) {
    return _then(_$SetScreenStateImpl(
      null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as ScreenState,
    ));
  }
}

/// @nodoc

class _$SetScreenStateImpl implements _SetScreenState {
  const _$SetScreenStateImpl(this.screenState);

  @override
  final ScreenState screenState;

  @override
  String toString() {
    return 'MainEvent.setScreenState(screenState: $screenState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetScreenStateImpl &&
            (identical(other.screenState, screenState) ||
                other.screenState == screenState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetScreenStateImplCopyWith<_$SetScreenStateImpl> get copyWith =>
      __$$SetScreenStateImplCopyWithImpl<_$SetScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) getUserData,
    required TResult Function(ScreenState screenState) setScreenState,
  }) {
    return setScreenState(screenState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? getUserData,
    TResult? Function(ScreenState screenState)? setScreenState,
  }) {
    return setScreenState?.call(screenState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? getUserData,
    TResult Function(ScreenState screenState)? setScreenState,
    required TResult orElse(),
  }) {
    if (setScreenState != null) {
      return setScreenState(screenState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_SetScreenState value) setScreenState,
  }) {
    return setScreenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_SetScreenState value)? setScreenState,
  }) {
    return setScreenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_SetScreenState value)? setScreenState,
    required TResult orElse(),
  }) {
    if (setScreenState != null) {
      return setScreenState(this);
    }
    return orElse();
  }
}

abstract class _SetScreenState implements MainEvent {
  const factory _SetScreenState(final ScreenState screenState) =
      _$SetScreenStateImpl;

  ScreenState get screenState;
  @JsonKey(ignore: true)
  _$$SetScreenStateImplCopyWith<_$SetScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get missingUserInfo => throw _privateConstructorUsedError;
  ScreenState get screenState => throw _privateConstructorUsedError;
  RFUser? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool missingUserInfo,
      ScreenState screenState,
      RFUser? user});

  $RFUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? missingUserInfo = null,
    Object? screenState = null,
    Object? user = freezed,
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
      missingUserInfo: null == missingUserInfo
          ? _value.missingUserInfo
          : missingUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      screenState: null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as ScreenState,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
    ) as $Val);
  }

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
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool missingUserInfo,
      ScreenState screenState,
      RFUser? user});

  @override
  $RFUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? missingUserInfo = null,
    Object? screenState = null,
    Object? user = freezed,
  }) {
    return _then(_$MainStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      missingUserInfo: null == missingUserInfo
          ? _value.missingUserInfo
          : missingUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      screenState: null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as ScreenState,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.missingUserInfo = false,
      this.screenState = ScreenState.home,
      this.user});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool missingUserInfo;
  @override
  @JsonKey()
  final ScreenState screenState;
  @override
  final RFUser? user;

  @override
  String toString() {
    return 'MainState(isLoading: $isLoading, isError: $isError, missingUserInfo: $missingUserInfo, screenState: $screenState, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.missingUserInfo, missingUserInfo) ||
                other.missingUserInfo == missingUserInfo) &&
            (identical(other.screenState, screenState) ||
                other.screenState == screenState) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, missingUserInfo, screenState, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final bool isLoading,
      final bool isError,
      final bool missingUserInfo,
      final ScreenState screenState,
      final RFUser? user}) = _$MainStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get missingUserInfo;
  @override
  ScreenState get screenState;
  @override
  RFUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
