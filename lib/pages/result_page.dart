import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blocs/image_process/image_process_bloc.dart';
import '../core/settings.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageProcessBloc, ImageProcessState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Offstage(),
          loading: () {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(height: 10),
                    Text("Processing the Image...")
                  ],
                ),
              ),
            );
          },
          showResult: (imageFile, textBuffer) {
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text("Image Result"),
                  bottom: const TabBar(
                    tabs: <Tab>[
                      Tab(
                        child: Text("ASCII Image"),
                      ),
                      Tab(
                        child: Text("Image Source"),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    InteractiveViewer(
                      minScale: 0.1,
                      maxScale: 5,
                      constrained: false,
                      boundaryMargin: const EdgeInsets.all(300),
                      child: Text(
                        textBuffer.toString(),
                        style: GoogleFonts.robotoMono(
                          fontSize: fontSize,
                          letterSpacing: letterSpacing,
                        ),
                        softWrap: false,
                      ),
                    ),
                    InteractiveViewer(
                      child: Image.file(
                        imageFile,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
