import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../settings/presentation/blocs/settings/settings_bloc.dart';
import '../../domain/models/image_result_model.dart';
import 'row_action_buttons.dart';

class AsciiImageView extends StatelessWidget {
  const AsciiImageView({
    Key? key,
    required this.imageResult,
    required this.screenshotController,
    required this.isDarkScreen,
  }) : super(key: key);

  final ImageResultModel imageResult;
  final ScreenshotController screenshotController;
  final bool isDarkScreen;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultCanvasColor = theme.canvasColor;
    final defaultTextColor = theme.textTheme.bodyText1?.color ?? Colors.white;

    final imageTextBuffer = isDarkScreen
        ? imageResult.imageStringBufferDark
        : imageResult.imageStringBufferLight;

    final canvasColor = isDarkScreen ? defaultCanvasColor : defaultTextColor;
    final textColor = isDarkScreen ? defaultTextColor : defaultCanvasColor;

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
                        color: canvasColor,
                        child: Text(
                          imageTextBuffer.toString(),
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: textColor,
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
