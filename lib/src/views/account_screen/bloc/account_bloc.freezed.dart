// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser? user) init,
    required TResult Function(XFile image) saveUserProfileImg,
    required TResult Function(String imageUrl) updateUserProfileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser? user)? init,
    TResult? Function(XFile image)? saveUserProfileImg,
    TResult? Function(String imageUrl)? updateUserProfileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser? user)? init,
    TResult Function(XFile image)? saveUserProfileImg,
    TResult Function(String imageUrl)? updateUserProfileImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SaveUserProfileImg value) saveUserProfileImg,
    required TResult Function(_UpdateUserProfileImg value) updateUserProfileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult? Function(_UpdateUserProfileImg value)? updateUserProfileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult Function(_UpdateUserProfileImg value)? updateUserProfileImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({RFUser? user});

  $RFUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RFUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $RFUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.user);

  @override
  final RFUser? user;

  @override
  String toString() {
    return 'AccountEvent.init(user: $user)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser? user) init,
    required TResult Function(XFile image) saveUserProfileImg,
    required TResult Function(String imageUrl) updateUserProfileImg,
  }) {
    return init(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser? user)? init,
    TResult? Function(XFile image)? saveUserProfileImg,
    TResult? Function(String imageUrl)? updateUserProfileImg,
  }) {
    return init?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser? user)? init,
    TResult Function(XFile image)? saveUserProfileImg,
    TResult Function(String imageUrl)? updateUserProfileImg,
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
    required TResult Function(_SaveUserProfileImg value) saveUserProfileImg,
    required TResult Function(_UpdateUserProfileImg value) updateUserProfileImg,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult? Function(_UpdateUserProfileImg value)? updateUserProfileImg,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult Function(_UpdateUserProfileImg value)? updateUserProfileImg,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AccountEvent {
  const factory _Init(final RFUser? user) = _$InitImpl;

  RFUser? get user;
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveUserProfileImgImplCopyWith<$Res> {
  factory _$$SaveUserProfileImgImplCopyWith(_$SaveUserProfileImgImpl value,
          $Res Function(_$SaveUserProfileImgImpl) then) =
      __$$SaveUserProfileImgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$SaveUserProfileImgImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$SaveUserProfileImgImpl>
    implements _$$SaveUserProfileImgImplCopyWith<$Res> {
  __$$SaveUserProfileImgImplCopyWithImpl(_$SaveUserProfileImgImpl _value,
      $Res Function(_$SaveUserProfileImgImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$SaveUserProfileImgImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$SaveUserProfileImgImpl implements _SaveUserProfileImg {
  const _$SaveUserProfileImgImpl(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'AccountEvent.saveUserProfileImg(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserProfileImgImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserProfileImgImplCopyWith<_$SaveUserProfileImgImpl> get copyWith =>
      __$$SaveUserProfileImgImplCopyWithImpl<_$SaveUserProfileImgImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser? user) init,
    required TResult Function(XFile image) saveUserProfileImg,
    required TResult Function(String imageUrl) updateUserProfileImg,
  }) {
    return saveUserProfileImg(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser? user)? init,
    TResult? Function(XFile image)? saveUserProfileImg,
    TResult? Function(String imageUrl)? updateUserProfileImg,
  }) {
    return saveUserProfileImg?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser? user)? init,
    TResult Function(XFile image)? saveUserProfileImg,
    TResult Function(String imageUrl)? updateUserProfileImg,
    required TResult orElse(),
  }) {
    if (saveUserProfileImg != null) {
      return saveUserProfileImg(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SaveUserProfileImg value) saveUserProfileImg,
    required TResult Function(_UpdateUserProfileImg value) updateUserProfileImg,
  }) {
    return saveUserProfileImg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult? Function(_UpdateUserProfileImg value)? updateUserProfileImg,
  }) {
    return saveUserProfileImg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult Function(_UpdateUserProfileImg value)? updateUserProfileImg,
    required TResult orElse(),
  }) {
    if (saveUserProfileImg != null) {
      return saveUserProfileImg(this);
    }
    return orElse();
  }
}

abstract class _SaveUserProfileImg implements AccountEvent {
  const factory _SaveUserProfileImg(final XFile image) =
      _$SaveUserProfileImgImpl;

  XFile get image;
  @JsonKey(ignore: true)
  _$$SaveUserProfileImgImplCopyWith<_$SaveUserProfileImgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserProfileImgImplCopyWith<$Res> {
  factory _$$UpdateUserProfileImgImplCopyWith(_$UpdateUserProfileImgImpl value,
          $Res Function(_$UpdateUserProfileImgImpl) then) =
      __$$UpdateUserProfileImgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$UpdateUserProfileImgImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$UpdateUserProfileImgImpl>
    implements _$$UpdateUserProfileImgImplCopyWith<$Res> {
  __$$UpdateUserProfileImgImplCopyWithImpl(_$UpdateUserProfileImgImpl _value,
      $Res Function(_$UpdateUserProfileImgImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$UpdateUserProfileImgImpl(
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserProfileImgImpl implements _UpdateUserProfileImg {
  const _$UpdateUserProfileImgImpl(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'AccountEvent.updateUserProfileImg(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileImgImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileImgImplCopyWith<_$UpdateUserProfileImgImpl>
      get copyWith =>
          __$$UpdateUserProfileImgImplCopyWithImpl<_$UpdateUserProfileImgImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RFUser? user) init,
    required TResult Function(XFile image) saveUserProfileImg,
    required TResult Function(String imageUrl) updateUserProfileImg,
  }) {
    return updateUserProfileImg(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RFUser? user)? init,
    TResult? Function(XFile image)? saveUserProfileImg,
    TResult? Function(String imageUrl)? updateUserProfileImg,
  }) {
    return updateUserProfileImg?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RFUser? user)? init,
    TResult Function(XFile image)? saveUserProfileImg,
    TResult Function(String imageUrl)? updateUserProfileImg,
    required TResult orElse(),
  }) {
    if (updateUserProfileImg != null) {
      return updateUserProfileImg(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SaveUserProfileImg value) saveUserProfileImg,
    required TResult Function(_UpdateUserProfileImg value) updateUserProfileImg,
  }) {
    return updateUserProfileImg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult? Function(_UpdateUserProfileImg value)? updateUserProfileImg,
  }) {
    return updateUserProfileImg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SaveUserProfileImg value)? saveUserProfileImg,
    TResult Function(_UpdateUserProfileImg value)? updateUserProfileImg,
    required TResult orElse(),
  }) {
    if (updateUserProfileImg != null) {
      return updateUserProfileImg(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserProfileImg implements AccountEvent {
  const factory _UpdateUserProfileImg(final String imageUrl) =
      _$UpdateUserProfileImgImpl;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$UpdateUserProfileImgImplCopyWith<_$UpdateUserProfileImgImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  RFUser? get user => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({bool isLoading, bool isError, RFUser? user, String? imageURL});

  $RFUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? user = freezed,
    Object? imageURL = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, RFUser? user, String? imageURL});

  @override
  $RFUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? user = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_$AccountStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RFUser?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl(
      {this.isLoading = false, this.isError = false, this.user, this.imageURL});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  final RFUser? user;
  @override
  final String? imageURL;

  @override
  String toString() {
    return 'AccountState(isLoading: $isLoading, isError: $isError, user: $user, imageURL: $imageURL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, user, imageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final bool isLoading,
      final bool isError,
      final RFUser? user,
      final String? imageURL}) = _$AccountStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  RFUser? get user;
  @override
  String? get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
