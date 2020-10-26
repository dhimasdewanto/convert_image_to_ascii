import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/injections.dart';
import 'core/theme_data.dart';
import 'features/main/presentation/pages/splash_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget with Injections {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASCII Image',
      themeMode: ThemeMode.dark,
      darkTheme: themeDark,
      home: const SplashPage(),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => imageProcessBloc),
            BlocProvider(create: (context) => settingsBloc),
          ],
          child: child,
        );
      },
    );
  }
}
