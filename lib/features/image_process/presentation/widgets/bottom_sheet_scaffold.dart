import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/navigators.dart';
import '../blocs/image_actions/image_actions_bloc.dart';

class BottomSheetScaffold extends StatefulWidget {
  const BottomSheetScaffold({
    Key key,
    @required this.appBar,
    @required this.body,
    @required this.screenshotController,
  }) : super(key: key);

  final PreferredSizeWidget appBar;
  final Widget body;
  final ScreenshotController screenshotController;

  @override
  _BottomSheetScaffoldState createState() => _BottomSheetScaffoldState();
}

class _BottomSheetScaffoldState extends State<BottomSheetScaffold> {
  var _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: widget.body,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isOpen) {
            pop(context: context);
          } else {
            showBottomSheet(
              context: context,
              builder: (context) => WillPopScope(
                onWillPop: () async => false,
                child: BottomSheet(
                  onClosing: () {},
                  builder: (context) {
                    return Card(
                      margin: EdgeInsets.zero,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.copy_rounded),
                            title: const Text("Copy Text"),
                            onTap: () {
                              final imageActionsBloc =
                                  context.read<ImageActionsBloc>();
                              imageActionsBloc.add(
                                const ImageActionsEvent.copyImageText(),
                              );
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.save_alt_rounded),
                            title: const Text("Save Image"),
                            onTap: () {
                              final imageActionBloc =
                                  context.read<ImageActionsBloc>();
                              imageActionBloc.add(
                                ImageActionsEvent.saveImage(
                                  screenshotController:
                                      widget.screenshotController,
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.share_rounded),
                            title: const Text("Share Image"),
                            onTap: () {},
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          }

          setState(() {
            _isOpen = !_isOpen;
          });
        },
        child: _isOpen
            ? const Icon(Icons.arrow_downward_rounded)
            : const Icon(Icons.arrow_upward_rounded),
      ),
    );
  }
}
