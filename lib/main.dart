import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/injections.dart';
import 'pages/home_page.dart';
import 'themes/theme_data.dart';

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
      home: const HomePage(),
      builder: (context, child) {
        return BlocProvider(
          create: (context) => imageProcessBloc,
          child: child,
        );
      },
    );
  }
}
