import 'package:flutter/material.dart';

class BottomSheetScaffold extends StatelessWidget {
  const BottomSheetScaffold({
    Key key,
    @required this.appBar,
    @required this.body,
  }) : super(key: key);

  final PreferredSizeWidget appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (context) => BottomSheet(
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
            );
          },
          child: const Icon(Icons.arrow_upward_rounded),
        ),
      ),
    );
  }
}
