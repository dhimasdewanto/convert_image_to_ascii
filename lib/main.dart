import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injections/configure_dependencies.dart';
import 'core/theme_data.dart';
import 'features/image_process/presentation/blocs/image_actions/image_actions_bloc.dart';
import 'features/image_process/presentation/blocs/image_process/image_process_bloc.dart';
import 'features/main/presentation/pages/splash_page.dart';
import 'features/settings/presentation/blocs/settings/settings_bloc.dart';

void main() {
  configureDependencies();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASCII Image',
      themeMode: ThemeMode.dark,
      darkTheme: themeDark.copyWith(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => Colors.white,
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (states) => Colors.white.withOpacity(0.1),
            ),
            shape:  MaterialStateProperty.resolveWith<OutlinedBorder>(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
      home: const SplashPage(),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<ImageActionsBloc>()),
            BlocProvider(create: (context) => getIt<ImageProcessBloc>()),
            BlocProvider(create: (context) => getIt<SettingsBloc>()),
          ],
          child: child,
        );
      },
    );
  }
}
