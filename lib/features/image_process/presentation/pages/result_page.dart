import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/image_process/image_process_bloc.dart';
import '../widgets/ascii_image_view.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageProcessBloc, ImageProcessState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Scaffold(
            body: Offstage(),
          ),
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
          showResult: (imageFile, imageResult, convertedImageBytes) {
            return DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text("Image Result"),
                  bottom: const TabBar(
                    isScrollable: true,
                    tabs: <Tab>[
                      Tab(
                        child: Text("ASCII Image"),
                      ),
                      Tab(
                        child: Text("Converted Image"),
                      ),
                      Tab(
                        child: Text("Original Image"),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    AsciiImageView(
                      imageTextBuffer: imageResult.imageStringBuffer,
                    ),
                    InteractiveViewer(
                      child: Image.memory(
                        convertedImageBytes,
                        width: double.infinity,
                        fit: BoxFit.contain,
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
