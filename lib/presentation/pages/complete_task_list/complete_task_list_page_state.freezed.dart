// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complete_task_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompleteTaskListPageState {
  List<TaskData> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteTaskListPageStateCopyWith<CompleteTaskListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTaskListPageStateCopyWith<$Res> {
  factory $CompleteTaskListPageStateCopyWith(CompleteTaskListPageState value,
          $Res Function(CompleteTaskListPageState) then) =
      _$CompleteTaskListPageStateCopyWithImpl<$Res>;
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class _$CompleteTaskListPageStateCopyWithImpl<$Res>
    implements $CompleteTaskListPageStateCopyWith<$Res> {
  _$CompleteTaskListPageStateCopyWithImpl(this._value, this._then);

  final CompleteTaskListPageState _value;
  // ignore: unused_field
  final $Res Function(CompleteTaskListPageState) _then;

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
abstract class _$CompleteTaskListPageStateCopyWith<$Res>
    implements $CompleteTaskListPageStateCopyWith<$Res> {
  factory _$CompleteTaskListPageStateCopyWith(_CompleteTaskListPageState value,
          $Res Function(_CompleteTaskListPageState) then) =
      __$CompleteTaskListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class __$CompleteTaskListPageStateCopyWithImpl<$Res>
    extends _$CompleteTaskListPageStateCopyWithImpl<$Res>
    implements _$CompleteTaskListPageStateCopyWith<$Res> {
  __$CompleteTaskListPageStateCopyWithImpl(_CompleteTaskListPageState _value,
      $Res Function(_CompleteTaskListPageState) _then)
      : super(_value, (v) => _then(v as _CompleteTaskListPageState));

  @override
  _CompleteTaskListPageState get _value =>
      super._value as _CompleteTaskListPageState;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_CompleteTaskListPageState(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskData>,
    ));
  }
}

/// @nodoc

class _$_CompleteTaskListPageState
    with DiagnosticableTreeMixin
    implements _CompleteTaskListPageState {
  const _$_CompleteTaskListPageState(
      {final List<TaskData> tasks = const <TaskData>[]})
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
    return 'CompleteTaskListPageState(tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompleteTaskListPageState'))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteTaskListPageState &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$CompleteTaskListPageStateCopyWith<_CompleteTaskListPageState>
      get copyWith =>
          __$CompleteTaskListPageStateCopyWithImpl<_CompleteTaskListPageState>(
              this, _$identity);
}

abstract class _CompleteTaskListPageState implements CompleteTaskListPageState {
  const factory _CompleteTaskListPageState({final List<TaskData> tasks}) =
      _$_CompleteTaskListPageState;

  @override
  List<TaskData> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompleteTaskListPageStateCopyWith<_CompleteTaskListPageState>
      get copyWith => throw _privateConstructorUsedError;
}
