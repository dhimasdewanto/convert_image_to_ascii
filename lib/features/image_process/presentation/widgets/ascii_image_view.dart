import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../settings/presentation/blocs/settings/settings_bloc.dart';
import 'row_action_buttons.dart';

class AsciiImageView extends StatelessWidget {
  const AsciiImageView({
    Key? key,
    required this.imageTextBuffer,
    required this.screenshotController,
  }) : super(key: key);

  final StringBuffer imageTextBuffer;
  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: InteractiveViewer(
            minScale: 0.1,
            maxScale: 5,
            constrained: false,
            boundaryMargin: const EdgeInsets.all(300),
            child: BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Offstage(),
                  show: (settingsModel) {
                    return Screenshot(
                      controller: screenshotController,
                      child: Container(
                        color: theme.canvasColor,
                        child: Text(
                          imageTextBuffer.toString(),
                          style: const TextStyle(
                            fontFamily: 'RobotoMono',
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
        RowActionButtons(
          screenshotController: screenshotController,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
