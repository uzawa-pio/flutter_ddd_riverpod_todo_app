// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageState {
  int get currentPageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res>;
  $Res call({int currentPageIndex});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  final MainPageState _value;
  // ignore: unused_field
  final $Res Function(MainPageState) _then;

  @override
  $Res call({
    Object? currentPageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageIndex: currentPageIndex == freezed
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$MainPageStateCopyWith(
          _MainPageState value, $Res Function(_MainPageState) then) =
      __$MainPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentPageIndex});
}

/// @nodoc
class __$MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res>
    implements _$MainPageStateCopyWith<$Res> {
  __$MainPageStateCopyWithImpl(
      _MainPageState _value, $Res Function(_MainPageState) _then)
      : super(_value, (v) => _then(v as _MainPageState));

  @override
  _MainPageState get _value => super._value as _MainPageState;

  @override
  $Res call({
    Object? currentPageIndex = freezed,
  }) {
    return _then(_MainPageState(
      currentPageIndex: currentPageIndex == freezed
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainPageState with DiagnosticableTreeMixin implements _MainPageState {
  const _$_MainPageState({this.currentPageIndex = 0});

  @override
  @JsonKey()
  final int currentPageIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainPageState(currentPageIndex: $currentPageIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainPageState'))
      ..add(DiagnosticsProperty('currentPageIndex', currentPageIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainPageState &&
            const DeepCollectionEquality()
                .equals(other.currentPageIndex, currentPageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentPageIndex));

  @JsonKey(ignore: true)
  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      __$MainPageStateCopyWithImpl<_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState({final int currentPageIndex}) = _$_MainPageState;

  @override
  int get currentPageIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
