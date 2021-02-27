part of 'image_actions_bloc.dart';

final imageActionsListener = BlocListener<ImageActionsBloc, ImageActionsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      success: (message) {
        showSnackBar(
          context: context,
          message: tr(message),
        );
      },
      error: (message) {
        showSnackBar(
          context: context,
          message: tr(message),
        );
      },
    );
  },
);
