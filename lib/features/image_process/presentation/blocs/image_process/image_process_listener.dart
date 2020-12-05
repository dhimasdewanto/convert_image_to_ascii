part of 'image_process_bloc.dart';

final imageProcessListener = BlocListener<ImageProcessBloc, ImageProcessState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      imagePicked: (imageFile) {
        pushAndRemoveAll(
          context: context,
          page: const ResultPage(),
        );
      },
      showResult: (imageResult) {
        // TODO(dhimasdewanto): Coming soon
        // final imageActionBloc = context.read<ImageActionsBloc>();
        // imageActionBloc.add(
        //   ImageActionsEvent.listenImageProcess(
        //     imageSource: imageSource,
        //     imageResult: imageResult,
        //     convertedImageBytes: convertedImageBytes,
        //   ),
        // );
      },
    );
  },
);
