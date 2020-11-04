import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/image_process/image_process_bloc.dart';
import '../widgets/ascii_image_view.dart';
import '../widgets/result_tabs_widget.dart';

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
            return ResultTabsWidget(
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
            );
          },
        );
      },
    );
  }
}
