// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_done.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDone {
// ignore: avoid_positional_boolean_parameters
  bool get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDoneCopyWith<TaskDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDoneCopyWith<$Res> {
  factory $TaskDoneCopyWith(TaskDone value, $Res Function(TaskDone) then) =
      _$TaskDoneCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$TaskDoneCopyWithImpl<$Res> implements $TaskDoneCopyWith<$Res> {
  _$TaskDoneCopyWithImpl(this._value, this._then);

  final TaskDone _value;
  // ignore: unused_field
  final $Res Function(TaskDone) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TaskDoneCopyWith<$Res> implements $TaskDoneCopyWith<$Res> {
  factory _$TaskDoneCopyWith(_TaskDone value, $Res Function(_TaskDone) then) =
      __$TaskDoneCopyWithImpl<$Res>;
  @override
  $Res call({bool value});
}

/// @nodoc
class __$TaskDoneCopyWithImpl<$Res> extends _$TaskDoneCopyWithImpl<$Res>
    implements _$TaskDoneCopyWith<$Res> {
  __$TaskDoneCopyWithImpl(_TaskDone _value, $Res Function(_TaskDone) _then)
      : super(_value, (v) => _then(v as _TaskDone));

  @override
  _TaskDone get _value => super._value as _TaskDone;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TaskDone(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskDone implements _TaskDone {
  const _$_TaskDone(this.value);

// ignore: avoid_positional_boolean_parameters
  @override
  final bool value;

  @override
  String toString() {
    return 'TaskDone(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDone &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$TaskDoneCopyWith<_TaskDone> get copyWith =>
      __$TaskDoneCopyWithImpl<_TaskDone>(this, _$identity);
}

abstract class _TaskDone implements TaskDone {
  const factory _TaskDone(final bool value) = _$_TaskDone;

  @override // ignore: avoid_positional_boolean_parameters
  bool get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskDoneCopyWith<_TaskDone> get copyWith =>
      throw _privateConstructorUsedError;
}
