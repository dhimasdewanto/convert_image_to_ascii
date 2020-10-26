import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main/presentation/pages/home_page.dart';
import '../blocs/settings/settings_bloc.dart';

final onSuccessInitializedListener = BlocListener<SettingsBloc, SettingsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      show: (settingsModel) {
        final route = MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
        return Navigator.pushAndRemoveUntil(
          context,
          route,
          (route) => false,
        );
      },
    );
  },
);
