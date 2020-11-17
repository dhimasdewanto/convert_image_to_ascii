import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/flushbars.dart';
import '../../blocs/image_actions/image_actions_bloc.dart';

final imageActionListener = BlocListener<ImageActionsBloc, ImageActionsState>(
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
