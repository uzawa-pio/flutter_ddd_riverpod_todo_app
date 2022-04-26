// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: const TaskIdConverter().fromJson(json['id'] as String),
      title: const TaskTitleConverter().fromJson(json['title'] as String),
      detail: const TaskDetailConverter().fromJson(json['detail'] as String),
      done: const TaskDoneConverter().fromJson(json['done'] as int),
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': const TaskIdConverter().toJson(instance.id),
      'title': const TaskTitleConverter().toJson(instance.title),
      'detail': const TaskDetailConverter().toJson(instance.detail),
      'done': const TaskDoneConverter().toJson(instance.done),
    };
