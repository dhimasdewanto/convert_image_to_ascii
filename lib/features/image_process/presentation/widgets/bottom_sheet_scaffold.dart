import 'package:flutter/material.dart';

import '../../../../core/navigators.dart';

class BottomSheetScaffold extends StatefulWidget {
  const BottomSheetScaffold({
    Key? key,
    required this.appBar,
    required this.body,
    required this.bottomSheet,
  }) : super(key: key);

  final PreferredSizeWidget appBar;
  final Widget body;
  final Widget bottomSheet;

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
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () {
            if (_isOpen) {
              pop(context: context);
            } else {
              showBottomSheet(
                context: context,
                builder: (context) => WillPopScope(
                  onWillPop: () async => false,
                  child: widget.bottomSheet,
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
        );
      }),
    );
  }
}
