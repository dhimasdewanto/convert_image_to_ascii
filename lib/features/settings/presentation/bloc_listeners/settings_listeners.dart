import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../../../image_process/presentation/blocs/image_process/image_process_bloc.dart';
import '../../../main/presentation/pages/home_page.dart';
import '../../domain/models/settings_model.dart';
import '../blocs/settings/settings_bloc.dart';

final onSuccessInitializedListener = BlocListener<SettingsBloc, SettingsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      show: (settingsModel) {
        _addSettingsToImageProcessBloc(
          context: context,
          settingsModel: settingsModel,
        );
        pushAndRemoveAll(
          context: context,
          page: const HomePage(),
        );
      },
    );
  },
);

final onSuccessUpdatedSettings = BlocListener<SettingsBloc, SettingsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      show: (settingsModel) {
        _addSettingsToImageProcessBloc(
          context: context,
          settingsModel: settingsModel,
        );
      },
    );
  },
);

void _addSettingsToImageProcessBloc({
  @required BuildContext context,
  @required SettingsModel settingsModel,
}) {
  final imageProcessBloc = context.bloc<ImageProcessBloc>();
  imageProcessBloc.add(
    ImageProcessEvent.updateSettings(
      settingsModel: settingsModel,
    ),
  );
}
