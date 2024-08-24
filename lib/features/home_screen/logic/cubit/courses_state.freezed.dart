// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
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
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CoursesLoadingImplCopyWith<$Res> {
  factory _$$CoursesLoadingImplCopyWith(_$CoursesLoadingImpl value,
          $Res Function(_$CoursesLoadingImpl) then) =
      __$$CoursesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoursesLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CoursesLoadingImpl>
    implements _$$CoursesLoadingImplCopyWith<$Res> {
  __$$CoursesLoadingImplCopyWithImpl(
      _$CoursesLoadingImpl _value, $Res Function(_$CoursesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoursesLoadingImpl implements CoursesLoading {
  const _$CoursesLoadingImpl();

  @override
  String toString() {
    return 'HomeState.coursesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoursesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) {
    return coursesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) {
    return coursesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
    required TResult orElse(),
  }) {
    if (coursesLoading != null) {
      return coursesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return coursesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return coursesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (coursesLoading != null) {
      return coursesLoading(this);
    }
    return orElse();
  }
}

abstract class CoursesLoading implements HomeState {
  const factory CoursesLoading() = _$CoursesLoadingImpl;
}

/// @nodoc
abstract class _$$CoursesSuccessImplCopyWith<$Res> {
  factory _$$CoursesSuccessImplCopyWith(_$CoursesSuccessImpl value,
          $Res Function(_$CoursesSuccessImpl) then) =
      __$$CoursesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CourseData?>? coursesDataList});
}

/// @nodoc
class __$$CoursesSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CoursesSuccessImpl>
    implements _$$CoursesSuccessImplCopyWith<$Res> {
  __$$CoursesSuccessImplCopyWithImpl(
      _$CoursesSuccessImpl _value, $Res Function(_$CoursesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesDataList = freezed,
  }) {
    return _then(_$CoursesSuccessImpl(
      freezed == coursesDataList
          ? _value._coursesDataList
          : coursesDataList // ignore: cast_nullable_to_non_nullable
              as List<CourseData?>?,
    ));
  }
}

/// @nodoc

class _$CoursesSuccessImpl implements CoursesSuccess {
  const _$CoursesSuccessImpl(final List<CourseData?>? coursesDataList)
      : _coursesDataList = coursesDataList;

  final List<CourseData?>? _coursesDataList;
  @override
  List<CourseData?>? get coursesDataList {
    final value = _coursesDataList;
    if (value == null) return null;
    if (_coursesDataList is EqualUnmodifiableListView) return _coursesDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.coursesSuccess(coursesDataList: $coursesDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._coursesDataList, _coursesDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coursesDataList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesSuccessImplCopyWith<_$CoursesSuccessImpl> get copyWith =>
      __$$CoursesSuccessImplCopyWithImpl<_$CoursesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) {
    return coursesSuccess(coursesDataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) {
    return coursesSuccess?.call(coursesDataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
    required TResult orElse(),
  }) {
    if (coursesSuccess != null) {
      return coursesSuccess(coursesDataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return coursesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return coursesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (coursesSuccess != null) {
      return coursesSuccess(this);
    }
    return orElse();
  }
}

abstract class CoursesSuccess implements HomeState {
  const factory CoursesSuccess(final List<CourseData?>? coursesDataList) =
      _$CoursesSuccessImpl;

  List<CourseData?>? get coursesDataList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoursesSuccessImplCopyWith<_$CoursesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoursesErrorImplCopyWith<$Res> {
  factory _$$CoursesErrorImplCopyWith(
          _$CoursesErrorImpl value, $Res Function(_$CoursesErrorImpl) then) =
      __$$CoursesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$CoursesErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CoursesErrorImpl>
    implements _$$CoursesErrorImplCopyWith<$Res> {
  __$$CoursesErrorImplCopyWithImpl(
      _$CoursesErrorImpl _value, $Res Function(_$CoursesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$CoursesErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$CoursesErrorImpl implements CoursesError {
  const _$CoursesErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState.coursesError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesErrorImplCopyWith<_$CoursesErrorImpl> get copyWith =>
      __$$CoursesErrorImplCopyWithImpl<_$CoursesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) {
    return coursesError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) {
    return coursesError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
    required TResult orElse(),
  }) {
    if (coursesError != null) {
      return coursesError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return coursesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return coursesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (coursesError != null) {
      return coursesError(this);
    }
    return orElse();
  }
}

abstract class CoursesError implements HomeState {
  const factory CoursesError(final ErrorHandler errorHandler) =
      _$CoursesErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoursesErrorImplCopyWith<_$CoursesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategorySuccessImplCopyWith<$Res> {
  factory _$$CategorySuccessImplCopyWith(_$CategorySuccessImpl value,
          $Res Function(_$CategorySuccessImpl) then) =
      __$$CategorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryData?>? categoryDataList});
}

/// @nodoc
class __$$CategorySuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategorySuccessImpl>
    implements _$$CategorySuccessImplCopyWith<$Res> {
  __$$CategorySuccessImplCopyWithImpl(
      _$CategorySuccessImpl _value, $Res Function(_$CategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDataList = freezed,
  }) {
    return _then(_$CategorySuccessImpl(
      freezed == categoryDataList
          ? _value._categoryDataList
          : categoryDataList // ignore: cast_nullable_to_non_nullable
              as List<CategoryData?>?,
    ));
  }
}

/// @nodoc

class _$CategorySuccessImpl implements CategorySuccess {
  const _$CategorySuccessImpl(final List<CategoryData?>? categoryDataList)
      : _categoryDataList = categoryDataList;

  final List<CategoryData?>? _categoryDataList;
  @override
  List<CategoryData?>? get categoryDataList {
    final value = _categoryDataList;
    if (value == null) return null;
    if (_categoryDataList is EqualUnmodifiableListView)
      return _categoryDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.categorySuccess(categoryDataList: $categoryDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryDataList, _categoryDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryDataList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySuccessImplCopyWith<_$CategorySuccessImpl> get copyWith =>
      __$$CategorySuccessImplCopyWithImpl<_$CategorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) {
    return categorySuccess(categoryDataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) {
    return categorySuccess?.call(categoryDataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
    required TResult orElse(),
  }) {
    if (categorySuccess != null) {
      return categorySuccess(categoryDataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return categorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return categorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (categorySuccess != null) {
      return categorySuccess(this);
    }
    return orElse();
  }
}

abstract class CategorySuccess implements HomeState {
  const factory CategorySuccess(final List<CategoryData?>? categoryDataList) =
      _$CategorySuccessImpl;

  List<CategoryData?>? get categoryDataList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySuccessImplCopyWith<_$CategorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryErrorImplCopyWith<$Res> {
  factory _$$CategoryErrorImplCopyWith(
          _$CategoryErrorImpl value, $Res Function(_$CategoryErrorImpl) then) =
      __$$CategoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$CategoryErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoryErrorImpl>
    implements _$$CategoryErrorImplCopyWith<$Res> {
  __$$CategoryErrorImplCopyWithImpl(
      _$CategoryErrorImpl _value, $Res Function(_$CategoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$CategoryErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$CategoryErrorImpl implements CategoryError {
  const _$CategoryErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState.categoryError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      __$$CategoryErrorImplCopyWithImpl<_$CategoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() coursesLoading,
    required TResult Function(List<CourseData?>? coursesDataList)
        coursesSuccess,
    required TResult Function(ErrorHandler errorHandler) coursesError,
    required TResult Function(List<CategoryData?>? categoryDataList)
        categorySuccess,
    required TResult Function(ErrorHandler errorHandler) categoryError,
  }) {
    return categoryError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? coursesLoading,
    TResult? Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult? Function(ErrorHandler errorHandler)? coursesError,
    TResult? Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult? Function(ErrorHandler errorHandler)? categoryError,
  }) {
    return categoryError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? coursesLoading,
    TResult Function(List<CourseData?>? coursesDataList)? coursesSuccess,
    TResult Function(ErrorHandler errorHandler)? coursesError,
    TResult Function(List<CategoryData?>? categoryDataList)? categorySuccess,
    TResult Function(ErrorHandler errorHandler)? categoryError,
    required TResult orElse(),
  }) {
    if (categoryError != null) {
      return categoryError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CoursesLoading value) coursesLoading,
    required TResult Function(CoursesSuccess value) coursesSuccess,
    required TResult Function(CoursesError value) coursesError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return categoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CoursesLoading value)? coursesLoading,
    TResult? Function(CoursesSuccess value)? coursesSuccess,
    TResult? Function(CoursesError value)? coursesError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return categoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CoursesLoading value)? coursesLoading,
    TResult Function(CoursesSuccess value)? coursesSuccess,
    TResult Function(CoursesError value)? coursesError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (categoryError != null) {
      return categoryError(this);
    }
    return orElse();
  }
}

abstract class CategoryError implements HomeState {
  const factory CategoryError(final ErrorHandler errorHandler) =
      _$CategoryErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
