import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/main/main_page_notifier.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/to_do/to_do_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  MainPage({
    Key? key,
  }) : super(key: key);

  final _pages = <Widget>[
    const ToDoPage(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(
      mainPageNotifierProvider.select((value) => value.currentPageIndex),
    );
    final notifier = ref.read(mainPageNotifierProvider.notifier);
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: notifier.changePage,
        currentIndex: currentIndex,
      ),
    );
  }
}
