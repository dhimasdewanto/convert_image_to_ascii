import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc_listeners/image_process/image_picked_listener.dart';
import '../blocs/image_process/image_process_bloc.dart';
import '../blocs/settings/settings_bloc.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final settingsBloc = context.bloc<SettingsBloc>();
    settingsBloc.add(
      const SettingsEvent.initialize(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final borderRadius = BorderRadius.circular(100);
    const sizeBig = 200.0;
    const sizeSmall = 100.0;
    final textThemeBig = textTheme.headline6;
    final textThemeSmall = textTheme.bodyText1;

    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          imagePickedListener,
        ],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  final settingsBloc = context.bloc<SettingsBloc>();
                  final imageProcessBloc = context.bloc<ImageProcessBloc>();
                  settingsBloc.state.maybeWhen(
                    orElse: () {},
                    show: (listCharacters, listColorValues) {
                      imageProcessBloc.add(
                        ImageProcessEvent.pickImage(
                          listCharacters: listCharacters,
                          listColorValues: listColorValues,
                        ),
                      );
                    },
                  );
                },
                borderRadius: borderRadius,
                child: Container(
                  height: sizeBig,
                  width: sizeBig,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    border: Border.all(
                      color: textTheme.bodyText1.color,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.add,
                          size: sizeBig / 3,
                        ),
                        Text(
                          "Convert",
                          style: textThemeBig,
                        ),
                        Text(
                          "Image",
                          style: textThemeBig,
                        ),
                        Text(
                          "to ASCII",
                          style: textThemeBig,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  final route = MaterialPageRoute(
                    builder: (_) => const SettingsPage(),
                  );
                  Navigator.of(context).push(route);
                },
                borderRadius: borderRadius,
                child: Container(
                  height: sizeSmall,
                  width: sizeSmall,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    border: Border.all(
                      color: textTheme.bodyText1.color,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.settings,
                          size: sizeSmall / 3,
                        ),
                        Text(
                          "Settings",
                          style: textThemeSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
