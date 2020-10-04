import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'blocs/image_process/image_process_bloc.dart';
import 'pages/home_page.dart';
import 'use_cases/get_string_buffer.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  ImageProcessBloc get imageProcessBloc {
    final getStringBuffer = GetStringBuffer();
    final imagePicker = ImagePicker();
    return ImageProcessBloc(
      getStringBuffer: getStringBuffer,
      imagePicker: imagePicker,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASCII Image',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        tabBarTheme: ThemeData.dark().tabBarTheme.copyWith(
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
      ),
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
