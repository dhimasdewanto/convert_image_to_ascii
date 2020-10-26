import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../settings/presentation/blocs/settings/settings_bloc.dart';

class AsciiImageView extends StatelessWidget {
  const AsciiImageView({
    Key key,
    @required this.imageTextBuffer,
  }) : super(key: key);

  final StringBuffer imageTextBuffer;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 0.1,
      maxScale: 5,
      constrained: false,
      boundaryMargin: const EdgeInsets.all(300),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            show: (settingsModel) {
              return Text(
                imageTextBuffer.toString(),
                style: GoogleFonts.robotoMono(
                  fontSize: settingsModel.fontSize.toDouble(),
                  letterSpacing: settingsModel.letterSpacing,
                ),
                softWrap: false,
              );
            },
          );
        },
      ),
    );
  }
}
