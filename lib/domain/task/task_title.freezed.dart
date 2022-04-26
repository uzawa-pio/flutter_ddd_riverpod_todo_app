// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskTitle {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskTitleCopyWith<TaskTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTitleCopyWith<$Res> {
  factory $TaskTitleCopyWith(TaskTitle value, $Res Function(TaskTitle) then) =
      _$TaskTitleCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$TaskTitleCopyWithImpl<$Res> implements $TaskTitleCopyWith<$Res> {
  _$TaskTitleCopyWithImpl(this._value, this._then);

  final TaskTitle _value;
  // ignore: unused_field
  final $Res Function(TaskTitle) _then;

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
abstract class _$TaskTitleCopyWith<$Res> implements $TaskTitleCopyWith<$Res> {
  factory _$TaskTitleCopyWith(
          _TaskTitle value, $Res Function(_TaskTitle) then) =
      __$TaskTitleCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$TaskTitleCopyWithImpl<$Res> extends _$TaskTitleCopyWithImpl<$Res>
    implements _$TaskTitleCopyWith<$Res> {
  __$TaskTitleCopyWithImpl(_TaskTitle _value, $Res Function(_TaskTitle) _then)
      : super(_value, (v) => _then(v as _TaskTitle));

  @override
  _TaskTitle get _value => super._value as _TaskTitle;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TaskTitle(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskTitle implements _TaskTitle {
  const _$_TaskTitle(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TaskTitle(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskTitle &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$TaskTitleCopyWith<_TaskTitle> get copyWith =>
      __$TaskTitleCopyWithImpl<_TaskTitle>(this, _$identity);
}

abstract class _TaskTitle implements TaskTitle {
  const factory _TaskTitle(final String value) = _$_TaskTitle;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskTitleCopyWith<_TaskTitle> get copyWith =>
      throw _privateConstructorUsedError;
}
