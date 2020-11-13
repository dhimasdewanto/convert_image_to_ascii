import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/image_actions/image_actions_bloc.dart';
import '../blocs/image_process/image_process_bloc.dart';
import '../pages/result_page.dart';

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
      showResult: (
        imageSource,
        imageResult,
        convertedImageBytes,
        screenshotController,
      ) {
        final imageActionBloc = context.read<ImageActionsBloc>();
        imageActionBloc.add(
          ImageActionsEvent.listenImageProcess(
            imageSource: imageSource,
            imageResult: imageResult,
            convertedImageBytes: convertedImageBytes,
          ),
        );
      },
    );
  },
);
