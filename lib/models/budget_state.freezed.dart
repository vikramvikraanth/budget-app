// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetState {
  List<BudgetCategory> get categories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetStateCopyWith<BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res, BudgetState>;
  @useResult
  $Res call({List<BudgetCategory> categories, bool isLoading, String? error});
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res, $Val extends BudgetState>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BudgetCategory>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetStateImplCopyWith<$Res>
    implements $BudgetStateCopyWith<$Res> {
  factory _$$BudgetStateImplCopyWith(
          _$BudgetStateImpl value, $Res Function(_$BudgetStateImpl) then) =
      __$$BudgetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BudgetCategory> categories, bool isLoading, String? error});
}

/// @nodoc
class __$$BudgetStateImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$BudgetStateImpl>
    implements _$$BudgetStateImplCopyWith<$Res> {
  __$$BudgetStateImplCopyWithImpl(
      _$BudgetStateImpl _value, $Res Function(_$BudgetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$BudgetStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BudgetCategory>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BudgetStateImpl implements _BudgetState {
  const _$BudgetStateImpl(
      {final List<BudgetCategory> categories = const [],
      this.isLoading = false,
      this.error})
      : _categories = categories;

  final List<BudgetCategory> _categories;
  @override
  @JsonKey()
  List<BudgetCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'BudgetState(categories: $categories, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetStateImplCopyWith<_$BudgetStateImpl> get copyWith =>
      __$$BudgetStateImplCopyWithImpl<_$BudgetStateImpl>(this, _$identity);
}

abstract class _BudgetState implements BudgetState {
  const factory _BudgetState(
      {final List<BudgetCategory> categories,
      final bool isLoading,
      final String? error}) = _$BudgetStateImpl;

  @override
  List<BudgetCategory> get categories;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$BudgetStateImplCopyWith<_$BudgetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
