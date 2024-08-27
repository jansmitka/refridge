// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteNotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestNotificationPermission,
    required TResult Function(String token) onTokenRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestNotificationPermission,
    TResult? Function(String token)? onTokenRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestNotificationPermission,
    TResult Function(String token)? onTokenRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestNotificationPermission value)
        requestNotificationPermission,
    required TResult Function(_OnTokenRefresh value) onTokenRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestNotificationPermission value)?
        requestNotificationPermission,
    TResult? Function(_OnTokenRefresh value)? onTokenRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestNotificationPermission value)?
        requestNotificationPermission,
    TResult Function(_OnTokenRefresh value)? onTokenRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteNotificationsEventCopyWith<$Res> {
  factory $RemoteNotificationsEventCopyWith(RemoteNotificationsEvent value,
          $Res Function(RemoteNotificationsEvent) then) =
      _$RemoteNotificationsEventCopyWithImpl<$Res, RemoteNotificationsEvent>;
}

/// @nodoc
class _$RemoteNotificationsEventCopyWithImpl<$Res,
        $Val extends RemoteNotificationsEvent>
    implements $RemoteNotificationsEventCopyWith<$Res> {
  _$RemoteNotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestNotificationPermissionImplCopyWith<$Res> {
  factory _$$RequestNotificationPermissionImplCopyWith(
          _$RequestNotificationPermissionImpl value,
          $Res Function(_$RequestNotificationPermissionImpl) then) =
      __$$RequestNotificationPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestNotificationPermissionImplCopyWithImpl<$Res>
    extends _$RemoteNotificationsEventCopyWithImpl<$Res,
        _$RequestNotificationPermissionImpl>
    implements _$$RequestNotificationPermissionImplCopyWith<$Res> {
  __$$RequestNotificationPermissionImplCopyWithImpl(
      _$RequestNotificationPermissionImpl _value,
      $Res Function(_$RequestNotificationPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestNotificationPermissionImpl
    implements _RequestNotificationPermission {
  const _$RequestNotificationPermissionImpl();

  @override
  String toString() {
    return 'RemoteNotificationsEvent.requestNotificationPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestNotificationPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestNotificationPermission,
    required TResult Function(String token) onTokenRefresh,
  }) {
    return requestNotificationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestNotificationPermission,
    TResult? Function(String token)? onTokenRefresh,
  }) {
    return requestNotificationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestNotificationPermission,
    TResult Function(String token)? onTokenRefresh,
    required TResult orElse(),
  }) {
    if (requestNotificationPermission != null) {
      return requestNotificationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestNotificationPermission value)
        requestNotificationPermission,
    required TResult Function(_OnTokenRefresh value) onTokenRefresh,
  }) {
    return requestNotificationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestNotificationPermission value)?
        requestNotificationPermission,
    TResult? Function(_OnTokenRefresh value)? onTokenRefresh,
  }) {
    return requestNotificationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestNotificationPermission value)?
        requestNotificationPermission,
    TResult Function(_OnTokenRefresh value)? onTokenRefresh,
    required TResult orElse(),
  }) {
    if (requestNotificationPermission != null) {
      return requestNotificationPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestNotificationPermission
    implements RemoteNotificationsEvent {
  const factory _RequestNotificationPermission() =
      _$RequestNotificationPermissionImpl;
}

/// @nodoc
abstract class _$$OnTokenRefreshImplCopyWith<$Res> {
  factory _$$OnTokenRefreshImplCopyWith(_$OnTokenRefreshImpl value,
          $Res Function(_$OnTokenRefreshImpl) then) =
      __$$OnTokenRefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$OnTokenRefreshImplCopyWithImpl<$Res>
    extends _$RemoteNotificationsEventCopyWithImpl<$Res, _$OnTokenRefreshImpl>
    implements _$$OnTokenRefreshImplCopyWith<$Res> {
  __$$OnTokenRefreshImplCopyWithImpl(
      _$OnTokenRefreshImpl _value, $Res Function(_$OnTokenRefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$OnTokenRefreshImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnTokenRefreshImpl implements _OnTokenRefresh {
  const _$OnTokenRefreshImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'RemoteNotificationsEvent.onTokenRefresh(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTokenRefreshImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTokenRefreshImplCopyWith<_$OnTokenRefreshImpl> get copyWith =>
      __$$OnTokenRefreshImplCopyWithImpl<_$OnTokenRefreshImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestNotificationPermission,
    required TResult Function(String token) onTokenRefresh,
  }) {
    return onTokenRefresh(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestNotificationPermission,
    TResult? Function(String token)? onTokenRefresh,
  }) {
    return onTokenRefresh?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestNotificationPermission,
    TResult Function(String token)? onTokenRefresh,
    required TResult orElse(),
  }) {
    if (onTokenRefresh != null) {
      return onTokenRefresh(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestNotificationPermission value)
        requestNotificationPermission,
    required TResult Function(_OnTokenRefresh value) onTokenRefresh,
  }) {
    return onTokenRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestNotificationPermission value)?
        requestNotificationPermission,
    TResult? Function(_OnTokenRefresh value)? onTokenRefresh,
  }) {
    return onTokenRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestNotificationPermission value)?
        requestNotificationPermission,
    TResult Function(_OnTokenRefresh value)? onTokenRefresh,
    required TResult orElse(),
  }) {
    if (onTokenRefresh != null) {
      return onTokenRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnTokenRefresh implements RemoteNotificationsEvent {
  const factory _OnTokenRefresh(final String token) = _$OnTokenRefreshImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$OnTokenRefreshImplCopyWith<_$OnTokenRefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteNotificationsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  NotificationPermissionStatus get permissionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteNotificationsStateCopyWith<RemoteNotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteNotificationsStateCopyWith<$Res> {
  factory $RemoteNotificationsStateCopyWith(RemoteNotificationsState value,
          $Res Function(RemoteNotificationsState) then) =
      _$RemoteNotificationsStateCopyWithImpl<$Res, RemoteNotificationsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      NotificationPermissionStatus permissionStatus});
}

/// @nodoc
class _$RemoteNotificationsStateCopyWithImpl<$Res,
        $Val extends RemoteNotificationsState>
    implements $RemoteNotificationsStateCopyWith<$Res> {
  _$RemoteNotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? permissionStatus = null,
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
      permissionStatus: null == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as NotificationPermissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteNotificationsStateImplCopyWith<$Res>
    implements $RemoteNotificationsStateCopyWith<$Res> {
  factory _$$RemoteNotificationsStateImplCopyWith(
          _$RemoteNotificationsStateImpl value,
          $Res Function(_$RemoteNotificationsStateImpl) then) =
      __$$RemoteNotificationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      NotificationPermissionStatus permissionStatus});
}

/// @nodoc
class __$$RemoteNotificationsStateImplCopyWithImpl<$Res>
    extends _$RemoteNotificationsStateCopyWithImpl<$Res,
        _$RemoteNotificationsStateImpl>
    implements _$$RemoteNotificationsStateImplCopyWith<$Res> {
  __$$RemoteNotificationsStateImplCopyWithImpl(
      _$RemoteNotificationsStateImpl _value,
      $Res Function(_$RemoteNotificationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? permissionStatus = null,
  }) {
    return _then(_$RemoteNotificationsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionStatus: null == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as NotificationPermissionStatus,
    ));
  }
}

/// @nodoc

class _$RemoteNotificationsStateImpl implements _RemoteNotificationsState {
  const _$RemoteNotificationsStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.permissionStatus = NotificationPermissionStatus.denied});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final NotificationPermissionStatus permissionStatus;

  @override
  String toString() {
    return 'RemoteNotificationsState(isLoading: $isLoading, isError: $isError, permissionStatus: $permissionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteNotificationsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.permissionStatus, permissionStatus) ||
                other.permissionStatus == permissionStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, permissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteNotificationsStateImplCopyWith<_$RemoteNotificationsStateImpl>
      get copyWith => __$$RemoteNotificationsStateImplCopyWithImpl<
          _$RemoteNotificationsStateImpl>(this, _$identity);
}

abstract class _RemoteNotificationsState implements RemoteNotificationsState {
  const factory _RemoteNotificationsState(
          {final bool isLoading,
          final bool isError,
          final NotificationPermissionStatus permissionStatus}) =
      _$RemoteNotificationsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  NotificationPermissionStatus get permissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$RemoteNotificationsStateImplCopyWith<_$RemoteNotificationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
