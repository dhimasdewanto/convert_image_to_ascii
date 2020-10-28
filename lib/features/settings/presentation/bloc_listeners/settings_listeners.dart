import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../../../main/presentation/pages/home_page.dart';
import '../blocs/settings/settings_bloc.dart';

final onSuccessInitializedListener = BlocListener<SettingsBloc, SettingsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      show: (settingsModel) {
        pushAndRemoveAll(
          context: context,
          page: const HomePage(),
        );
      },
    );
  },
);
