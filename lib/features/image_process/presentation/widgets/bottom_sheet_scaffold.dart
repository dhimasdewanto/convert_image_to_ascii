import 'package:flutter/material.dart';

import '../../../../core/navigators.dart';

class BottomSheetScaffold extends StatefulWidget {
  const BottomSheetScaffold({
    Key key,
    @required this.appBar,
    @required this.body,
    this.isFloatingButtonVisible = true,
  }) : super(key: key);

  final PreferredSizeWidget appBar;
  final Widget body;
  final bool isFloatingButtonVisible;

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
      floatingActionButton: widget.isFloatingButtonVisible == false
          ? null
          : Builder(
              builder: (context) => FloatingActionButton(
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
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.save_alt_rounded),
                                    title: const Text("Save Image"),
                                    onTap: () {},
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
            ),
    );
  }
}
