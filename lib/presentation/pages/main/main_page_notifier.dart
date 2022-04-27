import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/main/main_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainPageNotifierProvider =
    StateNotifierProvider.autoDispose<MainPageNotifier, MainPageState>((ref) {
  return MainPageNotifier();
});

class MainPageNotifier extends StateNotifier<MainPageState> {
  MainPageNotifier() : super(const MainPageState());

  /// ページの変更.
  void changePage(int index) {
    state = state.copyWith(currentPageIndex: index);
  }
}
