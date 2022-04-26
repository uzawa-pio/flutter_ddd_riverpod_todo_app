// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  @TaskIdConverter()
  TaskId get id => throw _privateConstructorUsedError;
  @TaskTitleConverter()
  TaskTitle get title => throw _privateConstructorUsedError;
  @TaskDetailConverter()
  TaskDetail get detail => throw _privateConstructorUsedError;
  @TaskDoneConverter()
  TaskDone get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {@TaskIdConverter() TaskId id,
      @TaskTitleConverter() TaskTitle title,
      @TaskDetailConverter() TaskDetail detail,
      @TaskDoneConverter() TaskDone done});

  $TaskIdCopyWith<$Res> get id;
  $TaskTitleCopyWith<$Res> get title;
  $TaskDetailCopyWith<$Res> get detail;
  $TaskDoneCopyWith<$Res> get done;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

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
              as TaskId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TaskTitle,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as TaskDetail,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as TaskDone,
    ));
  }

  @override
  $TaskIdCopyWith<$Res> get id {
    return $TaskIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $TaskTitleCopyWith<$Res> get title {
    return $TaskTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value));
    });
  }

  @override
  $TaskDetailCopyWith<$Res> get detail {
    return $TaskDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }

  @override
  $TaskDoneCopyWith<$Res> get done {
    return $TaskDoneCopyWith<$Res>(_value.done, (value) {
      return _then(_value.copyWith(done: value));
    });
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {@TaskIdConverter() TaskId id,
      @TaskTitleConverter() TaskTitle title,
      @TaskDetailConverter() TaskDetail detail,
      @TaskDoneConverter() TaskDone done});

  @override
  $TaskIdCopyWith<$Res> get id;
  @override
  $TaskTitleCopyWith<$Res> get title;
  @override
  $TaskDetailCopyWith<$Res> get detail;
  @override
  $TaskDoneCopyWith<$Res> get done;
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? done = freezed,
  }) {
    return _then(_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TaskId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TaskTitle,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as TaskDetail,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as TaskDone,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task extends _Task with DiagnosticableTreeMixin {
  _$_Task(
      {@TaskIdConverter() required this.id,
      @TaskTitleConverter() required this.title,
      @TaskDetailConverter() required this.detail,
      @TaskDoneConverter() required this.done})
      : super._();

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  @TaskIdConverter()
  final TaskId id;
  @override
  @TaskTitleConverter()
  final TaskTitle title;
  @override
  @TaskDetailConverter()
  final TaskDetail detail;
  @override
  @TaskDoneConverter()
  final TaskDone done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, title: $title, detail: $detail, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(this);
  }
}

abstract class _Task extends Task {
  factory _Task(
      {@TaskIdConverter() required final TaskId id,
      @TaskTitleConverter() required final TaskTitle title,
      @TaskDetailConverter() required final TaskDetail detail,
      @TaskDoneConverter() required final TaskDone done}) = _$_Task;
  _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  @TaskIdConverter()
  TaskId get id => throw _privateConstructorUsedError;
  @override
  @TaskTitleConverter()
  TaskTitle get title => throw _privateConstructorUsedError;
  @override
  @TaskDetailConverter()
  TaskDetail get detail => throw _privateConstructorUsedError;
  @override
  @TaskDoneConverter()
  TaskDone get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
