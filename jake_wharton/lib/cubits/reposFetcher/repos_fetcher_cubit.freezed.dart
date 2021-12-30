// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repos_fetcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReposFetcherStateTearOff {
  const _$ReposFetcherStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadingMore loadingMore({required List<Repo> repos, required int page}) {
    return _LoadingMore(
      repos: repos,
      page: page,
    );
  }

  _Error error({required String message, int errorCode = 404}) {
    return _Error(
      message: message,
      errorCode: errorCode,
    );
  }

  _Loaded loaded(List<Repo> repos, int page) {
    return _Loaded(
      repos,
      page,
    );
  }
}

/// @nodoc
const $ReposFetcherState = _$ReposFetcherStateTearOff();

/// @nodoc
mixin _$ReposFetcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Repo> repos, int page) loadingMore,
    required TResult Function(String message, int errorCode) error,
    required TResult Function(List<Repo> repos, int page) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReposFetcherStateCopyWith<$Res> {
  factory $ReposFetcherStateCopyWith(
          ReposFetcherState value, $Res Function(ReposFetcherState) then) =
      _$ReposFetcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReposFetcherStateCopyWithImpl<$Res>
    implements $ReposFetcherStateCopyWith<$Res> {
  _$ReposFetcherStateCopyWithImpl(this._value, this._then);

  final ReposFetcherState _value;
  // ignore: unused_field
  final $Res Function(ReposFetcherState) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$ReposFetcherStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty with DiagnosticableTreeMixin implements _Empty {
  const _$_Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReposFetcherState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ReposFetcherState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Repo> repos, int page) loadingMore,
    required TResult Function(String message, int errorCode) error,
    required TResult Function(List<Repo> repos, int page) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ReposFetcherState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ReposFetcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReposFetcherState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ReposFetcherState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Repo> repos, int page) loadingMore,
    required TResult Function(String message, int errorCode) error,
    required TResult Function(List<Repo> repos, int page) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReposFetcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadingMoreCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(
          _LoadingMore value, $Res Function(_LoadingMore) then) =
      __$LoadingMoreCopyWithImpl<$Res>;
  $Res call({List<Repo> repos, int page});
}

/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    extends _$ReposFetcherStateCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(
      _LoadingMore _value, $Res Function(_LoadingMore) _then)
      : super(_value, (v) => _then(v as _LoadingMore));

  @override
  _LoadingMore get _value => super._value as _LoadingMore;

  @override
  $Res call({
    Object? repos = freezed,
    Object? page = freezed,
  }) {
    return _then(_LoadingMore(
      repos: repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadingMore with DiagnosticableTreeMixin implements _LoadingMore {
  const _$_LoadingMore({required this.repos, required this.page});

  @override
  final List<Repo> repos;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReposFetcherState.loadingMore(repos: $repos, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReposFetcherState.loadingMore'))
      ..add(DiagnosticsProperty('repos', repos))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingMore &&
            const DeepCollectionEquality().equals(other.repos, repos) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repos),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$LoadingMoreCopyWith<_LoadingMore> get copyWith =>
      __$LoadingMoreCopyWithImpl<_LoadingMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Repo> repos, int page) loadingMore,
    required TResult Function(String message, int errorCode) error,
    required TResult Function(List<Repo> repos, int page) loaded,
  }) {
    return loadingMore(repos, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
  }) {
    return loadingMore?.call(repos, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(repos, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements ReposFetcherState {
  const factory _LoadingMore({required List<Repo> repos, required int page}) =
      _$_LoadingMore;

  List<Repo> get repos;
  int get page;
  @JsonKey(ignore: true)
  _$LoadingMoreCopyWith<_LoadingMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message, int errorCode});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ReposFetcherStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error({required this.message, this.errorCode = 404});

  @override
  final String message;
  @JsonKey()
  @override
  final int errorCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReposFetcherState.error(message: $message, errorCode: $errorCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReposFetcherState.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('errorCode', errorCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(errorCode));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Repo> repos, int page) loadingMore,
    required TResult Function(String message, int errorCode) error,
    required TResult Function(List<Repo> repos, int page) loaded,
  }) {
    return error(message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
  }) {
    return error?.call(message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReposFetcherState {
  const factory _Error({required String message, int errorCode}) = _$_Error;

  String get message;
  int get errorCode;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Repo> repos, int page});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ReposFetcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? repos = freezed,
    Object? page = freezed,
  }) {
    return _then(_Loaded(
      repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(this.repos, this.page);

  @override
  final List<Repo> repos;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReposFetcherState.loaded(repos: $repos, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReposFetcherState.loaded'))
      ..add(DiagnosticsProperty('repos', repos))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.repos, repos) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repos),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Repo> repos, int page) loadingMore,
    required TResult Function(String message, int errorCode) error,
    required TResult Function(List<Repo> repos, int page) loaded,
  }) {
    return loaded(repos, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
  }) {
    return loaded?.call(repos, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Repo> repos, int page)? loadingMore,
    TResult Function(String message, int errorCode)? error,
    TResult Function(List<Repo> repos, int page)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(repos, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ReposFetcherState {
  const factory _Loaded(List<Repo> repos, int page) = _$_Loaded;

  List<Repo> get repos;
  int get page;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
