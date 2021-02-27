import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injections/configure_dependencies.dart';
import 'core/locales.dart';
import 'core/theme_data.dart';
import 'features/image_process/presentation/blocs/image_actions/image_actions_bloc.dart';
import 'features/image_process/presentation/blocs/image_process/image_process_bloc.dart';
import 'features/main/presentation/pages/splash_page.dart';
import 'features/settings/presentation/blocs/settings/settings_bloc.dart';

void main() {
  inject();
  runApp(
    EasyLocalization(
      supportedLocales: mapLocales.values.toList(),
      path: localePath,
      fallbackLocale: defaultLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'ASCII Image',
      themeMode: ThemeMode.dark,
      darkTheme: themeDark,
      home: const SplashPage(),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<ImageActionsBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<ImageProcessBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<SettingsBloc>(),
            ),
          ],
          child: child ?? const Offstage(),
        );
      },
    );
  }
}
