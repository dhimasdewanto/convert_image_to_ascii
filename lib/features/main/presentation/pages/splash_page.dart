import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../settings/presentation/bloc_listeners/settings_listeners.dart';
import '../../../settings/presentation/blocs/settings/settings_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initializeSettingsBloc();
  }

  void _initializeSettingsBloc() {
    final settingsBloc = context.read<SettingsBloc>();
    settingsBloc.add(
      const SettingsEvent.initialize(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        onSuccessInitializedListener,
      ],
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
