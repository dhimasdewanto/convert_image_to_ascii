import 'package:flutter/material.dart';

void showSnackBar({
  @required BuildContext context,
  @required String message,
  Duration duration = const Duration(seconds: 4),
}) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: duration,
  );
  ScaffoldMessenger.of(context).showSnackBar(
    snackBar,
  );
}

void showActionSnackBar({
  @required BuildContext context,
  @required String message,
  @required String actionLabel,
  @required void Function() onActionPressed,
  Duration duration = const Duration(seconds: 4),
  Color actionTextColor = Colors.yellow,
}) {
  final snackBarAction = SnackBarAction(
    label: actionLabel,
    onPressed: onActionPressed,
  );
  final snackBar = SnackBar(
    content: Text(message),
    duration: duration,
    action: snackBarAction,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
