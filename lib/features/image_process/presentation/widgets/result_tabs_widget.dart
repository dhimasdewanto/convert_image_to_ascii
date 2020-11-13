import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import 'bottom_sheet_scaffold.dart';

class ResultTabsWidget extends StatefulWidget {
  const ResultTabsWidget({
    Key key,
    @required this.children,
    @required this.screenshotController,
  }) : super(key: key);

  final List<Widget> children;
  final ScreenshotController screenshotController;

  @override
  _ResultTabsWidgetState createState() => _ResultTabsWidgetState();
}

class _ResultTabsWidgetState extends State<ResultTabsWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var _isOnAsciiImageTab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() { 
      setState(() {
        _isOnAsciiImageTab = _setOnAsciiImageTab();
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool _setOnAsciiImageTab() {
    return _tabController.index == 0;
  }

  @override
  Widget build(BuildContext context) {
    final tabBar = TabBar(
      controller: _tabController,
      isScrollable: true,
      tabs: const <Tab>[
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
    );

    final tabBarView = TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: widget.children,
    );

    return BottomSheetScaffold(
      isFloatingButtonVisible: _isOnAsciiImageTab,
      screenshotController: widget.screenshotController,
      appBar: AppBar(
        title: const Text("Image Result"),
        bottom: tabBar,
      ),
      body: tabBarView,
    );
  }
}
