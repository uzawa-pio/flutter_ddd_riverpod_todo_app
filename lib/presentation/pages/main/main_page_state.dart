import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_state.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState({
    @Default(0) int currentPageIndex,
  }) = _MainPageState;
}
