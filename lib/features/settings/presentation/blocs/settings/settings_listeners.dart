part of 'settings_bloc.dart';

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
