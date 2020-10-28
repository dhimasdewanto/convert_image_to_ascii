import 'package:flutter/material.dart';

Future<void> push({
  @required BuildContext context,
  @required Widget page,
}) async {
  final route = MaterialPageRoute(builder: (_) => page);
  return Navigator.push(context, route);
}

Future<void> pushReplacement({
  @required BuildContext context,
  @required Widget page,
}) async {
  final route = MaterialPageRoute(builder: (_) => page);
  return Navigator.pushReplacement(context, route);
}

Future<void> pushAndRemoveAll({
  @required BuildContext context,
  @required Widget page,
}) async {
  final route = MaterialPageRoute(builder: (_) => page);
  return Navigator.pushAndRemoveUntil(
    context,
    route,
    (route) => false,
  );
}

void pop({
  @required BuildContext context,
}) {
  return Navigator.pop(context);
}
