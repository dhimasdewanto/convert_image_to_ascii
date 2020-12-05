part of 'image_actions_bloc.dart';

final imageActionsListener = BlocListener<ImageActionsBloc, ImageActionsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      successCopyText: () {
        showSuccessFlushbar(
          context: context,
          message: "Success copy text",
        );
      },
    );
  },
);
