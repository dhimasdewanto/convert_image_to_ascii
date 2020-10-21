import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/image_process/image_process_bloc.dart';
import '../../pages/result_page.dart';

final imagePickedListener = BlocListener<ImageProcessBloc, ImageProcessState>(
  listener: (context, state) {
    state.maybeWhen(
      orElse: () {},
      imagePicked: (imageFile) {
        final route = MaterialPageRoute(
          builder: (context) => const ResultPage(),
        );
        Navigator.push(context, route);
      },
    );
  },
);