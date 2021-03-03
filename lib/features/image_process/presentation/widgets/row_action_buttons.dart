import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../blocs/image_actions/image_actions_bloc.dart';

class RowActionButtons extends StatelessWidget {
  const RowActionButtons({
    Key? key,
    required this.screenshotController,
  }) : super(key: key);

  final ScreenshotController screenshotController;

  void _copyImage(BuildContext context) {
    final imageActionsBloc = context.read<ImageActionsBloc>();
    imageActionsBloc.add(
      const ImageActionsEvent.copyImageText(),
    );
  }

  void _saveImage(BuildContext context) {
    final imageActionBloc = context.read<ImageActionsBloc>();
    imageActionBloc.add(
      ImageActionsEvent.saveImage(
        screenshotController: screenshotController,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageActionsBloc, ImageActionsState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => _copyImage(context),
              child: const Text("Copy to Clipboard"),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () => _saveImage(context),
              child: const Text("Save to Gallery"),
            ),
          ],
        );
      },
    );
  }
}
