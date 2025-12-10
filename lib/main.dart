import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

import 'core/di/injector.dart';
import 'core/i18n/app_localization.g.dart';
import 'core/router/router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_extensions.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector();
  runApp(TranslationProvider(child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.dark,
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
    ).animate().fadeIn(
          duration: 400.ms,
        );
  }
}
