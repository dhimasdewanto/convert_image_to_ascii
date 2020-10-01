import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'result_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final borderRadius = BorderRadius.circular(100);
    const sizeBig = 200.0;
    const sizeSmall = 100.0;
    final textThemeBig = textTheme.headline6;
    final textThemeSmall = textTheme.bodyText1;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              borderRadius: borderRadius,
              onTap: () {
                // controller.setImage().then((isSuccess) {
                //   if (isSuccess) {
                //     final route = MaterialPageRoute(
                //       builder: (_) => const ResultPage(),
                //     );
                //     Navigator.push(context, route);
                //   }
                // });
                final route = MaterialPageRoute(
                  builder: (_) => const ResultPage(),
                );
                Navigator.push(context, route);
              },
              child: Container(
                height: sizeBig,
                width: sizeBig,
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  border: Border.all(
                    color: textTheme.bodyText1.color,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.add,
                        size: sizeBig / 3,
                      ),
                      Text(
                        "Convert",
                        style: textThemeBig,
                      ),
                      Text(
                        "Image",
                        style: textThemeBig,
                      ),
                      Text(
                        "to ASCII",
                        style: textThemeBig,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                height: sizeSmall,
                width: sizeSmall,
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  border: Border.all(
                    color: textTheme.bodyText1.color,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.settings,
                        size: sizeSmall / 3,
                      ),
                      Text(
                        "Settings",
                        style: textThemeSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}