import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../blocs/image_actions/image_actions_bloc.dart';

class ActionsBottonSheet extends StatelessWidget {
  const ActionsBottonSheet({
    Key key,
    @required this.screenshotController,
  }) : super(key: key);

  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Card(
          margin: EdgeInsets.zero,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.copy_rounded),
                title: const Text("Copy Text"),
                onTap: () {
                  final imageActionsBloc = context.read<ImageActionsBloc>();
                  imageActionsBloc.add(
                    const ImageActionsEvent.copyImageText(),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.save_alt_rounded),
                title: const Text("Save Image"),
                onTap: () {
                  final imageActionBloc = context.read<ImageActionsBloc>();
                  imageActionBloc.add(
                    ImageActionsEvent.saveImage(
                      screenshotController: screenshotController,
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.share_rounded),
                title: const Text("Share Image"),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
