import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@singleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const _ThemeState(ThemeMode.dark)) {
    on<_SwitchThemeMode>(_onSwitchThemeMode);
  }

  Future<void> _onSwitchThemeMode(_SwitchThemeMode event, Emitter<ThemeState> emit) async {
    final ThemeMode themeMode = switch (state.themeMode) {
      ThemeMode.dark => ThemeMode.light,
      ThemeMode.light => ThemeMode.dark,
      _ => ThemeMode.dark,
    };
    emit(_ThemeState(themeMode));
  }
}
