import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_repository.dart';
import 'package:flutter_ddd_riverpod_todo_app/infrastructure/sqlite/sqlite_task_repository.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/main/main_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injector/injector.dart';

void main() {
  dependencyInjection();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

void dependencyInjection() {
  Injector.appInstance.registerSingleton<TaskRepository>(
    SQLiteTaskRepository.new,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
