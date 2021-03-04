import 'package:easy_localization/easy_localization.dart';
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
                    orElse: () => Text(tr('copy_to_clipboard')),
                    successCopyText: () => Text(tr('copied_to_clipboard')),
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
                    orElse: () => Text(tr('save_to_gallery')),
                    loadingSaveImage: () =>
                        Text("${tr('saving_to_gallery')}..."),
                    successSaveImage: () => Text(tr('saved_in_gallery')),
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
