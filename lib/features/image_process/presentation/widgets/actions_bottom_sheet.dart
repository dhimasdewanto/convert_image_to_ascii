import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../blocs/image_actions/image_actions_bloc.dart';

@Deprecated("Not use bottom sheet anymore.")
class ActionsBottonSheet extends StatelessWidget {
  const ActionsBottonSheet({
    Key? key,
    required this.screenshotController,
  }) : super(key: key);

  final ScreenshotController? screenshotController;

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
        screenshotController: screenshotController!,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return BlocBuilder<ImageActionsBloc, ImageActionsState>(
          builder: (context, state) {
            return Card(
              margin: EdgeInsets.zero,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.copy_rounded),
                    title: Text(tr("copy_text")),
                    onTap: () => _copyImage(context),
                    trailing: state.maybeWhen(
                      orElse: () => const Offstage(),
                      loadingCopyText: () => const CircularProgressIndicator(),
                      successCopyText: () => const Icon(Icons.check),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.save_alt_rounded),
                    title: Text(tr("save_image")),
                    onTap: () => _saveImage(context),
                    trailing: state.maybeWhen(
                      orElse: () => const Offstage(),
                      loadingSaveImage: () => const CircularProgressIndicator(),
                      successSaveImage: () => const Icon(Icons.check),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
