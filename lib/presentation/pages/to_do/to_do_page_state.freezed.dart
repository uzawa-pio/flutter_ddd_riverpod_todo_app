// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'to_do_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDoPageState {
  List<TaskData> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoPageStateCopyWith<ToDoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoPageStateCopyWith<$Res> {
  factory $ToDoPageStateCopyWith(
          ToDoPageState value, $Res Function(ToDoPageState) then) =
      _$ToDoPageStateCopyWithImpl<$Res>;
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class _$ToDoPageStateCopyWithImpl<$Res>
    implements $ToDoPageStateCopyWith<$Res> {
  _$ToDoPageStateCopyWithImpl(this._value, this._then);

  final ToDoPageState _value;
  // ignore: unused_field
  final $Res Function(ToDoPageState) _then;

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
abstract class _$ToDoPageStateCopyWith<$Res>
    implements $ToDoPageStateCopyWith<$Res> {
  factory _$ToDoPageStateCopyWith(
          _ToDoPageState value, $Res Function(_ToDoPageState) then) =
      __$ToDoPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class __$ToDoPageStateCopyWithImpl<$Res>
    extends _$ToDoPageStateCopyWithImpl<$Res>
    implements _$ToDoPageStateCopyWith<$Res> {
  __$ToDoPageStateCopyWithImpl(
      _ToDoPageState _value, $Res Function(_ToDoPageState) _then)
      : super(_value, (v) => _then(v as _ToDoPageState));

  @override
  _ToDoPageState get _value => super._value as _ToDoPageState;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_ToDoPageState(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskData>,
    ));
  }
}

/// @nodoc

class _$_ToDoPageState with DiagnosticableTreeMixin implements _ToDoPageState {
  const _$_ToDoPageState({final List<TaskData> tasks = const <TaskData>[]})
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
    return 'ToDoPageState(tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToDoPageState'))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDoPageState &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$ToDoPageStateCopyWith<_ToDoPageState> get copyWith =>
      __$ToDoPageStateCopyWithImpl<_ToDoPageState>(this, _$identity);
}

abstract class _ToDoPageState implements ToDoPageState {
  const factory _ToDoPageState({final List<TaskData> tasks}) = _$_ToDoPageState;

  @override
  List<TaskData> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToDoPageStateCopyWith<_ToDoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
