import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/dependency_injections/configure_dependencies.dart';
import '../blocs/image_actions/image_actions_bloc.dart';
import '../blocs/image_process/image_process_bloc.dart';
import '../widgets/actions_bottom_sheet.dart';
import '../widgets/ascii_image_view.dart';
import '../widgets/bottom_sheet_scaffold.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenshotController = getIt<ScreenshotController>();

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
          showResult: (imageResult) {
            return BottomSheetScaffold(
              bottomSheet: ActionsBottonSheet(
                screenshotController: screenshotController,
              ),
              appBar: AppBar(
                title: const Text("Result"),
              ),
              body: MultiBlocListener(
                listeners: [
                  imageActionsListener,
                ],
                child: AsciiImageView(
                  screenshotController: screenshotController,
                  imageTextBuffer: imageResult.imageStringBuffer,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
