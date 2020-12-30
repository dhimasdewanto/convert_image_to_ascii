part of 'image_process_bloc.dart';

final imageProcessListener = BlocListener<ImageProcessBloc, ImageProcessState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      imagePicked: (imageFile) {
        push(
          context: context,
          page: const ResultPage(),
        );
      },
      showResult: (imageResult) {
        final imageActionBloc = context.read<ImageActionsBloc>();
        imageActionBloc.add(
          ImageActionsEvent.listenImageProcess(
            imageResult: imageResult,
          ),
        );
      },
    );
  },
);
