import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenshot/screenshot.dart';

import '../../../settings/presentation/blocs/settings/settings_bloc.dart';

/// Save image button to galery is only temp.
/// Should be in bloc instead.
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
            final image = await _screenshotController.capture(
              pixelRatio: 1.5,
            );
            await GallerySaver.saveImage(image.path);
          },
          child: const Text("Save to Gallery"),
        ),
        Expanded(
          child: InteractiveViewer(
            minScale: 0.1,
            maxScale: 5,
            constrained: false,
            boundaryMargin: const EdgeInsets.all(300),
            child: Container(
              color: theme.canvasColor,
              child: BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Offstage(),
                    show: (settingsModel) {
                      return Screenshot(
                        controller: _screenshotController,
                        child: Text(
                          widget.imageTextBuffer.toString(),
                          style: GoogleFonts.robotoMono(
                            fontSize: settingsModel.fontSize.toDouble(),
                            letterSpacing: settingsModel.letterSpacing,
                          ),
                          softWrap: false,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
