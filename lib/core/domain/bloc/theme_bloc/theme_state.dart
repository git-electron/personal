part of 'theme_bloc.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState(ThemeMode themeMode) = _ThemeState;
}
