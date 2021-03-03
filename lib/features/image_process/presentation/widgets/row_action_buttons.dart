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
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: () => _copyImage(context),
                  child: state.maybeWhen(
                    orElse: () => const Text("Copy to Clipboard"),
                    successCopyText: () => const Text("Copied in Clipboard"),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              width: 1,
              height: 20,
              color: DefaultTextStyle.of(context).style.color,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton(
                  onPressed: () => _saveImage(context),
                  child: state.maybeWhen(
                    orElse: () => const Text("Save to Gallery"),
                    loadingSaveImage: () => const Text("Saving to Gallery..."),
                    successSaveImage: () => const Text("Saved in Gallery"),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
