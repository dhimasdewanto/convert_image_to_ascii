import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenshot/screenshot.dart';

import '../../../settings/presentation/blocs/settings/settings_bloc.dart';
import '../blocs/image_actions/image_actions_bloc.dart';

class AsciiImageView extends StatefulWidget {
  const AsciiImageView({
    Key key,
    @required this.imageTextBuffer,
  }) : super(key: key);

  final StringBuffer imageTextBuffer;

  @override
  _AsciiImageViewState createState() => _AsciiImageViewState();
}

class _AsciiImageViewState extends State<AsciiImageView> {
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final imageActionBloc = context.read<ImageActionsBloc>();
            imageActionBloc.add(
              ImageActionsEvent.saveImage(
                screenshotController: _screenshotController,
              ),
            );
          },
          child: const Text("Save to Gallery"),
        ),
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
                      controller: _screenshotController,
                      child: Container(
                        color: theme.canvasColor,
                        child: Text(
                          widget.imageTextBuffer.toString(),
                          style: GoogleFonts.robotoMono(
                            fontSize: settingsModel.fontSize.toDouble(),
                            letterSpacing: settingsModel.letterSpacing,
                          ),
                          softWrap: false,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
