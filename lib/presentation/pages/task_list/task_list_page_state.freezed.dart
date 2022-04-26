// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListPageState {
  List<TaskData> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListPageStateCopyWith<TaskListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListPageStateCopyWith<$Res> {
  factory $TaskListPageStateCopyWith(
          TaskListPageState value, $Res Function(TaskListPageState) then) =
      _$TaskListPageStateCopyWithImpl<$Res>;
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class _$TaskListPageStateCopyWithImpl<$Res>
    implements $TaskListPageStateCopyWith<$Res> {
  _$TaskListPageStateCopyWithImpl(this._value, this._then);

  final TaskListPageState _value;
  // ignore: unused_field
  final $Res Function(TaskListPageState) _then;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskData>,
    ));
  }
}

/// @nodoc
abstract class _$TaskListPageStateCopyWith<$Res>
    implements $TaskListPageStateCopyWith<$Res> {
  factory _$TaskListPageStateCopyWith(
          _TaskListPageState value, $Res Function(_TaskListPageState) then) =
      __$TaskListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class __$TaskListPageStateCopyWithImpl<$Res>
    extends _$TaskListPageStateCopyWithImpl<$Res>
    implements _$TaskListPageStateCopyWith<$Res> {
  __$TaskListPageStateCopyWithImpl(
      _TaskListPageState _value, $Res Function(_TaskListPageState) _then)
      : super(_value, (v) => _then(v as _TaskListPageState));

  @override
  _TaskListPageState get _value => super._value as _TaskListPageState;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_TaskListPageState(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskData>,
    ));
  }
}

/// @nodoc

class _$_TaskListPageState
    with DiagnosticableTreeMixin
    implements _TaskListPageState {
  const _$_TaskListPageState({final List<TaskData> tasks = const <TaskData>[]})
      : _tasks = tasks;

  final List<TaskData> _tasks;
  @override
  @JsonKey()
  List<TaskData> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListPageState(tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListPageState'))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskListPageState &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$TaskListPageStateCopyWith<_TaskListPageState> get copyWith =>
      __$TaskListPageStateCopyWithImpl<_TaskListPageState>(this, _$identity);
}

abstract class _TaskListPageState implements TaskListPageState {
  const factory _TaskListPageState({final List<TaskData> tasks}) =
      _$_TaskListPageState;

  @override
  List<TaskData> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskListPageStateCopyWith<_TaskListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
