import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/image_process/image_process_bloc.dart';
import '../pages/result_page.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key key,
    this.appBar,
    this.body,
  }) : super(key: key);

  final PreferredSizeWidget appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: BlocListener<ImageProcessBloc, ImageProcessState>(
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
        child: body,
      ),
    );
  }
}
