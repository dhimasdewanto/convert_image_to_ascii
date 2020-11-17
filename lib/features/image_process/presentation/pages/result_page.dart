import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../bloc_listeners/image_actions/image_action_listener.dart';
import '../bloc_listeners/image_process/image_process_listener.dart';
import '../blocs/image_process/image_process_bloc.dart';
import '../widgets/actions_bottom_sheet.dart';
import '../widgets/ascii_image_view.dart';
import '../widgets/bottom_sheet_scaffold.dart';

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
          showResult: (imageResult) {
            return BottomSheetScaffold(
              bottomSheet: const ActionsBottonSheet(),
              appBar: AppBar(
                automaticallyImplyLeading: false, // Hide back button
                title: TextButton.icon(
                  onPressed: () {
                    final imageProcessBloc = context.read<ImageProcessBloc>();
                    imageProcessBloc.add(
                      const ImageProcessEvent.pickImage(),
                    );
                  },
                  icon: const Icon(Icons.create),
                  label: const Text("Convert"),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      push(
                        context: context,
                        page: const SettingsPage(),
                      );
                    },
                  ),
                ],
              ),
              body: MultiBlocListener(
                listeners: [
                  imageActionListener,
                  imageProcessListener,
                ],
                child: AsciiImageView(
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
