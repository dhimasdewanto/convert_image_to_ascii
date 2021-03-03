import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/dependency_injections/configure_dependencies.dart';
import '../blocs/image_actions/image_actions_bloc.dart';
import '../blocs/image_process/image_process_bloc.dart';
import '../widgets/ascii_image_view.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(tr('result')),
                ),
                bottomNavigationBar: TabBar(
                  tabs: [
                    Tab(
                      text: tr('dark_screen'),
                    ),
                    Tab(
                      text: tr('light_screen'),
                    ),
                  ],
                ),
                body: MultiBlocListener(
                  listeners: [
                    imageActionsListener,
                  ],
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      AsciiImageView(
                        screenshotController: screenshotController,
                        imageTextBuffer: imageResult.imageStringBuffer,
                      ),
                      AsciiImageView(
                        screenshotController: screenshotController,
                        imageTextBuffer: imageResult.imageStringBuffer,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
