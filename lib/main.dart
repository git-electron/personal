import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

import 'core/di/injector.dart';
import 'core/domain/bloc/theme_bloc/theme_bloc.dart';
import 'core/extensions/context_extensions.dart';
import 'core/i18n/app_localization.g.dart';
import 'core/router/router.dart';
import 'core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector();
  runApp(TranslationProvider(child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => $<ThemeBloc>(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: state.themeMode,
            title: context.t.title,
            supportedLocales: AppLocaleUtils.supportedLocales,
            locale: TranslationProvider.of(context).flutterLocale,
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            routerConfig: $<AppRouter>().config(),
            builder: (context, child) => shadcn.ShadcnLayer(
              theme: shadcn.ThemeData(
                radius: .7,
                colorScheme: shadcn.ColorSchemes.darkNeutral().copyWith(
                  background: context.colors.background,
                  foreground: context.colors.onBackground,
                  primary: context.colors.onBackground,
                  destructive: context.colors.error,
                  destructiveForeground: context.colors.error,
                ),
              ),
              child: shadcn.ToastLayer(
                child: child ?? const SizedBox(),
              ),
            ),
          );
        },
      ),
    ).animate().fadeIn(
          duration: 400.ms,
        );
  }
}
