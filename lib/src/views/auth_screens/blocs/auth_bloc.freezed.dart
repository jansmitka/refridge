// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AuthEvent.init()';
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
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
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
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$ChangeScreenStateImplCopyWith<$Res> {
  factory _$$ChangeScreenStateImplCopyWith(_$ChangeScreenStateImpl value,
          $Res Function(_$ChangeScreenStateImpl) then) =
      __$$ChangeScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthScreenType type});
}

/// @nodoc
class __$$ChangeScreenStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeScreenStateImpl>
    implements _$$ChangeScreenStateImplCopyWith<$Res> {
  __$$ChangeScreenStateImplCopyWithImpl(_$ChangeScreenStateImpl _value,
      $Res Function(_$ChangeScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeScreenStateImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthScreenType,
    ));
  }
}

/// @nodoc

class _$ChangeScreenStateImpl implements _ChangeScreenState {
  const _$ChangeScreenStateImpl(this.type);

  @override
  final AuthScreenType type;

  @override
  String toString() {
    return 'AuthEvent.changeScreenState(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeScreenStateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeScreenStateImplCopyWith<_$ChangeScreenStateImpl> get copyWith =>
      __$$ChangeScreenStateImplCopyWithImpl<_$ChangeScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return changeScreenState(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return changeScreenState?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (changeScreenState != null) {
      return changeScreenState(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return changeScreenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return changeScreenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (changeScreenState != null) {
      return changeScreenState(this);
    }
    return orElse();
  }
}

abstract class _ChangeScreenState implements AuthEvent {
  const factory _ChangeScreenState(final AuthScreenType type) =
      _$ChangeScreenStateImpl;

  AuthScreenType get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeScreenStateImplCopyWith<_$ChangeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInUserImplCopyWith<$Res> {
  factory _$$SignInUserImplCopyWith(
          _$SignInUserImpl value, $Res Function(_$SignInUserImpl) then) =
      __$$SignInUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInUserImpl>
    implements _$$SignInUserImplCopyWith<$Res> {
  __$$SignInUserImplCopyWithImpl(
      _$SignInUserImpl _value, $Res Function(_$SignInUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInUserImpl implements _SignInUser {
  const _$SignInUserImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInUserImplCopyWith<_$SignInUserImpl> get copyWith =>
      __$$SignInUserImplCopyWithImpl<_$SignInUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return signInUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return signInUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return signInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return signInUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(this);
    }
    return orElse();
  }
}

abstract class _SignInUser implements AuthEvent {
  const factory _SignInUser(final String email, final String password) =
      _$SignInUserImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInUserImplCopyWith<_$SignInUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpUserImplCopyWith<$Res> {
  factory _$$SignUpUserImplCopyWith(
          _$SignUpUserImpl value, $Res Function(_$SignUpUserImpl) then) =
      __$$SignUpUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpUserImpl>
    implements _$$SignUpUserImplCopyWith<$Res> {
  __$$SignUpUserImplCopyWithImpl(
      _$SignUpUserImpl _value, $Res Function(_$SignUpUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpUserImpl implements _SignUpUser {
  const _$SignUpUserImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpUserImplCopyWith<_$SignUpUserImpl> get copyWith =>
      __$$SignUpUserImplCopyWithImpl<_$SignUpUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return signUpUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return signUpUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return signUpUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return signUpUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(this);
    }
    return orElse();
  }
}

abstract class _SignUpUser implements AuthEvent {
  const factory _SignUpUser(final String email, final String password) =
      _$SignUpUserImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpUserImplCopyWith<_$SignUpUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInViaGoogleImplCopyWith<$Res> {
  factory _$$SignInViaGoogleImplCopyWith(_$SignInViaGoogleImpl value,
          $Res Function(_$SignInViaGoogleImpl) then) =
      __$$SignInViaGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInViaGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInViaGoogleImpl>
    implements _$$SignInViaGoogleImplCopyWith<$Res> {
  __$$SignInViaGoogleImplCopyWithImpl(
      _$SignInViaGoogleImpl _value, $Res Function(_$SignInViaGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInViaGoogleImpl implements _SignInViaGoogle {
  const _$SignInViaGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.signInViaGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInViaGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return signInViaGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return signInViaGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (signInViaGoogle != null) {
      return signInViaGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return signInViaGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return signInViaGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (signInViaGoogle != null) {
      return signInViaGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInViaGoogle implements AuthEvent {
  const factory _SignInViaGoogle() = _$SignInViaGoogleImpl;
}

/// @nodoc
abstract class _$$RecoverPasswordImplCopyWith<$Res> {
  factory _$$RecoverPasswordImplCopyWith(_$RecoverPasswordImpl value,
          $Res Function(_$RecoverPasswordImpl) then) =
      __$$RecoverPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RecoverPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RecoverPasswordImpl>
    implements _$$RecoverPasswordImplCopyWith<$Res> {
  __$$RecoverPasswordImplCopyWithImpl(
      _$RecoverPasswordImpl _value, $Res Function(_$RecoverPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RecoverPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecoverPasswordImpl implements _RecoverPassword {
  const _$RecoverPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.recoverPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverPasswordImplCopyWith<_$RecoverPasswordImpl> get copyWith =>
      __$$RecoverPasswordImplCopyWithImpl<_$RecoverPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return recoverPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return recoverPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (recoverPassword != null) {
      return recoverPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return recoverPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return recoverPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (recoverPassword != null) {
      return recoverPassword(this);
    }
    return orElse();
  }
}

abstract class _RecoverPassword implements AuthEvent {
  const factory _RecoverPassword(final String email) = _$RecoverPasswordImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverPasswordImplCopyWith<_$RecoverPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutUserImplCopyWith<$Res> {
  factory _$$LogoutUserImplCopyWith(
          _$LogoutUserImpl value, $Res Function(_$LogoutUserImpl) then) =
      __$$LogoutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutUserImpl>
    implements _$$LogoutUserImplCopyWith<$Res> {
  __$$LogoutUserImplCopyWithImpl(
      _$LogoutUserImpl _value, $Res Function(_$LogoutUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutUserImpl implements _LogoutUser {
  const _$LogoutUserImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AuthScreenType type) changeScreenState,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() signInViaGoogle,
    required TResult Function(String email) recoverPassword,
    required TResult Function() logoutUser,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AuthScreenType type)? changeScreenState,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? signInViaGoogle,
    TResult? Function(String email)? recoverPassword,
    TResult? Function()? logoutUser,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AuthScreenType type)? changeScreenState,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? signInViaGoogle,
    TResult Function(String email)? recoverPassword,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeScreenState value) changeScreenState,
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_SignInViaGoogle value) signInViaGoogle,
    required TResult Function(_RecoverPassword value) recoverPassword,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeScreenState value)? changeScreenState,
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult? Function(_RecoverPassword value)? recoverPassword,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeScreenState value)? changeScreenState,
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_SignInViaGoogle value)? signInViaGoogle,
    TResult Function(_RecoverPassword value)? recoverPassword,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class _LogoutUser implements AuthEvent {
  const factory _LogoutUser() = _$LogoutUserImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AuthScreenType get screenState => throw _privateConstructorUsedError;
  AuthScreenType get prevScreenState => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      AuthScreenType screenState,
      AuthScreenType prevScreenState});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? screenState = null,
    Object? prevScreenState = null,
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
      screenState: null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as AuthScreenType,
      prevScreenState: null == prevScreenState
          ? _value.prevScreenState
          : prevScreenState // ignore: cast_nullable_to_non_nullable
              as AuthScreenType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      AuthScreenType screenState,
      AuthScreenType prevScreenState});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? screenState = null,
    Object? prevScreenState = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      screenState: null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as AuthScreenType,
      prevScreenState: null == prevScreenState
          ? _value.prevScreenState
          : prevScreenState // ignore: cast_nullable_to_non_nullable
              as AuthScreenType,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.screenState = AuthScreenType.signIn,
      this.prevScreenState = AuthScreenType.signIn});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final AuthScreenType screenState;
  @override
  @JsonKey()
  final AuthScreenType prevScreenState;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isError: $isError, screenState: $screenState, prevScreenState: $prevScreenState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.screenState, screenState) ||
                other.screenState == screenState) &&
            (identical(other.prevScreenState, prevScreenState) ||
                other.prevScreenState == prevScreenState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, screenState, prevScreenState);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final bool isError,
      final AuthScreenType screenState,
      final AuthScreenType prevScreenState}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  AuthScreenType get screenState;
  @override
  AuthScreenType get prevScreenState;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
