import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/image_actions/image_actions_bloc.dart';

final imageActionListener = BlocListener<ImageActionsBloc, ImageActionsState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      successCopyText: () {
        const snackBar = SnackBar(
          content: Text("Success copy text"),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  },
);
