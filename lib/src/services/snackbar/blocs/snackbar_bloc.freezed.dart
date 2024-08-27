// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snackbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnackbarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SnackbarType type, String title, String body)
        showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SnackbarType type, String title, String body)?
        showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SnackbarType type, String title, String body)?
        showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowSnackBar value) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarEventCopyWith<$Res> {
  factory $SnackbarEventCopyWith(
          SnackbarEvent value, $Res Function(SnackbarEvent) then) =
      _$SnackbarEventCopyWithImpl<$Res, SnackbarEvent>;
}

/// @nodoc
class _$SnackbarEventCopyWithImpl<$Res, $Val extends SnackbarEvent>
    implements $SnackbarEventCopyWith<$Res> {
  _$SnackbarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SnackbarEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SnackbarEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SnackbarType type, String title, String body)
        showSnackBar,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SnackbarType type, String title, String body)?
        showSnackBar,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SnackbarType type, String title, String body)?
        showSnackBar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowSnackBar value) showSnackBar,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SnackbarEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ShowSnackBarImplCopyWith<$Res> {
  factory _$$ShowSnackBarImplCopyWith(
          _$ShowSnackBarImpl value, $Res Function(_$ShowSnackBarImpl) then) =
      __$$ShowSnackBarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SnackbarType type, String title, String body});
}

/// @nodoc
class __$$ShowSnackBarImplCopyWithImpl<$Res>
    extends _$SnackbarEventCopyWithImpl<$Res, _$ShowSnackBarImpl>
    implements _$$ShowSnackBarImplCopyWith<$Res> {
  __$$ShowSnackBarImplCopyWithImpl(
      _$ShowSnackBarImpl _value, $Res Function(_$ShowSnackBarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$ShowSnackBarImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnackbarType,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarImpl implements _ShowSnackBar {
  const _$ShowSnackBarImpl(this.type, this.title, this.body);

  @override
  final SnackbarType type;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'SnackbarEvent.showSnackBar(type: $type, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarImplCopyWith<_$ShowSnackBarImpl> get copyWith =>
      __$$ShowSnackBarImplCopyWithImpl<_$ShowSnackBarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SnackbarType type, String title, String body)
        showSnackBar,
  }) {
    return showSnackBar(type, title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SnackbarType type, String title, String body)?
        showSnackBar,
  }) {
    return showSnackBar?.call(type, title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SnackbarType type, String title, String body)?
        showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(type, title, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowSnackBar value) showSnackBar,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class _ShowSnackBar implements SnackbarEvent {
  const factory _ShowSnackBar(
          final SnackbarType type, final String title, final String body) =
      _$ShowSnackBarImpl;

  SnackbarType get type;
  String get title;
  String get body;
  @JsonKey(ignore: true)
  _$$ShowSnackBarImplCopyWith<_$ShowSnackBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SnackbarState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get showSnackbar => throw _privateConstructorUsedError;
  SnackbarType? get snackbarType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnackbarStateCopyWith<SnackbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarStateCopyWith<$Res> {
  factory $SnackbarStateCopyWith(
          SnackbarState value, $Res Function(SnackbarState) then) =
      _$SnackbarStateCopyWithImpl<$Res, SnackbarState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool showSnackbar,
      SnackbarType? snackbarType,
      String? title,
      String? body});
}

/// @nodoc
class _$SnackbarStateCopyWithImpl<$Res, $Val extends SnackbarState>
    implements $SnackbarStateCopyWith<$Res> {
  _$SnackbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? showSnackbar = null,
    Object? snackbarType = freezed,
    Object? title = freezed,
    Object? body = freezed,
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
      showSnackbar: null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarType: freezed == snackbarType
          ? _value.snackbarType
          : snackbarType // ignore: cast_nullable_to_non_nullable
              as SnackbarType?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackbarStateImplCopyWith<$Res>
    implements $SnackbarStateCopyWith<$Res> {
  factory _$$SnackbarStateImplCopyWith(
          _$SnackbarStateImpl value, $Res Function(_$SnackbarStateImpl) then) =
      __$$SnackbarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool showSnackbar,
      SnackbarType? snackbarType,
      String? title,
      String? body});
}

/// @nodoc
class __$$SnackbarStateImplCopyWithImpl<$Res>
    extends _$SnackbarStateCopyWithImpl<$Res, _$SnackbarStateImpl>
    implements _$$SnackbarStateImplCopyWith<$Res> {
  __$$SnackbarStateImplCopyWithImpl(
      _$SnackbarStateImpl _value, $Res Function(_$SnackbarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? showSnackbar = null,
    Object? snackbarType = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$SnackbarStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      showSnackbar: null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarType: freezed == snackbarType
          ? _value.snackbarType
          : snackbarType // ignore: cast_nullable_to_non_nullable
              as SnackbarType?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SnackbarStateImpl implements _SnackbarState {
  const _$SnackbarStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.showSnackbar = false,
      this.snackbarType,
      this.title,
      this.body});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool showSnackbar;
  @override
  final SnackbarType? snackbarType;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'SnackbarState(isLoading: $isLoading, isError: $isError, showSnackbar: $showSnackbar, snackbarType: $snackbarType, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.showSnackbar, showSnackbar) ||
                other.showSnackbar == showSnackbar) &&
            (identical(other.snackbarType, snackbarType) ||
                other.snackbarType == snackbarType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, showSnackbar, snackbarType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarStateImplCopyWith<_$SnackbarStateImpl> get copyWith =>
      __$$SnackbarStateImplCopyWithImpl<_$SnackbarStateImpl>(this, _$identity);
}

abstract class _SnackbarState implements SnackbarState {
  const factory _SnackbarState(
      {final bool isLoading,
      final bool isError,
      final bool showSnackbar,
      final SnackbarType? snackbarType,
      final String? title,
      final String? body}) = _$SnackbarStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get showSnackbar;
  @override
  SnackbarType? get snackbarType;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$SnackbarStateImplCopyWith<_$SnackbarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
