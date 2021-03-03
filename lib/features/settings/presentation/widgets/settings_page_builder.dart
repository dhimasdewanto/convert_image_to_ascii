import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/settings_model.dart';
import '../blocs/helper/helper_bloc.dart';
import '../blocs/settings/settings_bloc.dart';
import 'animated_arrow.dart';

class SettingsPageBuilder extends StatelessWidget {
  const SettingsPageBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(
    BuildContext context,
    SettingsModel settings,
    Widget? Function(HelperStatus targetStatus) showHelperArrow,
  ) builder;

  Widget? _showHelperArrow({
    required HelperStatus realStatus,
    required HelperStatus targetStatus,
  }) {
    return realStatus == targetStatus ? const AnimatedArrow() : null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        return settingsState.maybeWhen(
          orElse: () {
            return const Offstage();
          },
          show: (settings) {
            return BlocBuilder<HelperBloc, HelperStatus>(
              builder: (context, helperStatus) => builder(
                context,
                settings,
                (targetStatus) {
                  return _showHelperArrow(
                    realStatus: helperStatus,
                    targetStatus: targetStatus,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
