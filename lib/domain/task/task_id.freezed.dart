// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskIdCopyWith<TaskId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskIdCopyWith<$Res> {
  factory $TaskIdCopyWith(TaskId value, $Res Function(TaskId) then) =
      _$TaskIdCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$TaskIdCopyWithImpl<$Res> implements $TaskIdCopyWith<$Res> {
  _$TaskIdCopyWithImpl(this._value, this._then);

  final TaskId _value;
  // ignore: unused_field
  final $Res Function(TaskId) _then;

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
abstract class _$TaskIdCopyWith<$Res> implements $TaskIdCopyWith<$Res> {
  factory _$TaskIdCopyWith(_TaskId value, $Res Function(_TaskId) then) =
      __$TaskIdCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$TaskIdCopyWithImpl<$Res> extends _$TaskIdCopyWithImpl<$Res>
    implements _$TaskIdCopyWith<$Res> {
  __$TaskIdCopyWithImpl(_TaskId _value, $Res Function(_TaskId) _then)
      : super(_value, (v) => _then(v as _TaskId));

  @override
  _TaskId get _value => super._value as _TaskId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TaskId(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskId implements _TaskId {
  const _$_TaskId(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TaskId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$TaskIdCopyWith<_TaskId> get copyWith =>
      __$TaskIdCopyWithImpl<_TaskId>(this, _$identity);
}

abstract class _TaskId implements TaskId {
  const factory _TaskId(final String value) = _$_TaskId;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskIdCopyWith<_TaskId> get copyWith => throw _privateConstructorUsedError;
}
