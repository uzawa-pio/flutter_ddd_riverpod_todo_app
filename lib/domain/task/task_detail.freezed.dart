// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDetail {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDetailCopyWith<TaskDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailCopyWith<$Res> {
  factory $TaskDetailCopyWith(
          TaskDetail value, $Res Function(TaskDetail) then) =
      _$TaskDetailCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$TaskDetailCopyWithImpl<$Res> implements $TaskDetailCopyWith<$Res> {
  _$TaskDetailCopyWithImpl(this._value, this._then);

  final TaskDetail _value;
  // ignore: unused_field
  final $Res Function(TaskDetail) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TaskDetailCopyWith<$Res> implements $TaskDetailCopyWith<$Res> {
  factory _$TaskDetailCopyWith(
          _TaskDetail value, $Res Function(_TaskDetail) then) =
      __$TaskDetailCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$TaskDetailCopyWithImpl<$Res> extends _$TaskDetailCopyWithImpl<$Res>
    implements _$TaskDetailCopyWith<$Res> {
  __$TaskDetailCopyWithImpl(
      _TaskDetail _value, $Res Function(_TaskDetail) _then)
      : super(_value, (v) => _then(v as _TaskDetail));

  @override
  _TaskDetail get _value => super._value as _TaskDetail;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TaskDetail(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskDetail implements _TaskDetail {
  const _$_TaskDetail(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TaskDetail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDetail &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$TaskDetailCopyWith<_TaskDetail> get copyWith =>
      __$TaskDetailCopyWithImpl<_TaskDetail>(this, _$identity);
}

abstract class _TaskDetail implements TaskDetail {
  const factory _TaskDetail(final String value) = _$_TaskDetail;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskDetailCopyWith<_TaskDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
