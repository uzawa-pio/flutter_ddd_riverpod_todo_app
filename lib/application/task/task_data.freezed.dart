// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDataCopyWith<TaskData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDataCopyWith<$Res> {
  factory $TaskDataCopyWith(TaskData value, $Res Function(TaskData) then) =
      _$TaskDataCopyWithImpl<$Res>;
  $Res call({String id, String title, String detail, bool done});
}

/// @nodoc
class _$TaskDataCopyWithImpl<$Res> implements $TaskDataCopyWith<$Res> {
  _$TaskDataCopyWithImpl(this._value, this._then);

  final TaskData _value;
  // ignore: unused_field
  final $Res Function(TaskData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TaskDataCopyWith<$Res> implements $TaskDataCopyWith<$Res> {
  factory _$TaskDataCopyWith(_TaskData value, $Res Function(_TaskData) then) =
      __$TaskDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String detail, bool done});
}

/// @nodoc
class __$TaskDataCopyWithImpl<$Res> extends _$TaskDataCopyWithImpl<$Res>
    implements _$TaskDataCopyWith<$Res> {
  __$TaskDataCopyWithImpl(_TaskData _value, $Res Function(_TaskData) _then)
      : super(_value, (v) => _then(v as _TaskData));

  @override
  _TaskData get _value => super._value as _TaskData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? done = freezed,
  }) {
    return _then(_TaskData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskData with DiagnosticableTreeMixin implements _TaskData {
  const _$_TaskData(
      {required this.id,
      required this.title,
      required this.detail,
      required this.done});

  @override
  final String id;
  @override
  final String title;
  @override
  final String detail;
  @override
  final bool done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskData(id: $id, title: $title, detail: $detail, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$TaskDataCopyWith<_TaskData> get copyWith =>
      __$TaskDataCopyWithImpl<_TaskData>(this, _$identity);
}

abstract class _TaskData implements TaskData {
  const factory _TaskData(
      {required final String id,
      required final String title,
      required final String detail,
      required final bool done}) = _$_TaskData;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskDataCopyWith<_TaskData> get copyWith =>
      throw _privateConstructorUsedError;
}
