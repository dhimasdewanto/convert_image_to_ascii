import 'package:flutter/material.dart';

class ResultTabsWidget extends StatelessWidget {
  const ResultTabsWidget({
    Key key,
    @required this.builder,
    @required this.children,
  }) : super(key: key);

  final Widget Function(
    BuildContext context,
    TabBar tabBar,
    TabBarView tabBarView,
  ) builder;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    const tabBar = TabBar(
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
    );

    final tabBarView = TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      children: children,
    );

    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (context) {
          return builder(context, tabBar, tabBarView);
        },
      ),
    );
  }
}
