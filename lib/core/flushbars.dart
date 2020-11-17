import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

const _animationDuration = Duration(milliseconds: 300);

Future<void> showFlushbar({
  @required BuildContext context,
  @required String message,
  Duration duration = const Duration(seconds: 4),
  FlushbarPosition flushbarPosition = FlushbarPosition.BOTTOM,
}) async {
  await Flushbar(
    message: message,
    duration: duration,
    animationDuration: _animationDuration,
    flushbarPosition: flushbarPosition,
  ).show(context);
}

Future<void> showSuccessFlushbar({
  @required BuildContext context,
  @required String message,
  Duration duration = const Duration(seconds: 4),
  FlushbarPosition flushbarPosition = FlushbarPosition.BOTTOM,
}) async {
  await Flushbar(
    icon: const Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    message: message,
    duration: duration,
    animationDuration: _animationDuration,
    flushbarPosition: flushbarPosition,
  ).show(context);
}

Future<void> showSuccessActionFlushbar({
  @required BuildContext context,
  @required String message,
  Duration duration = const Duration(seconds: 4),
  FlushbarPosition flushbarPosition = FlushbarPosition.BOTTOM,
  @required String actionLabel,
  @required void Function() onActionPressed,
  Color actionTextColor = Colors.yellow,
}) async {
  final mainButton = TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) => actionTextColor,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.grey,
      ),
    ),
    onPressed: onActionPressed,
    child: Text(actionLabel),
  );
  await Flushbar(
    icon: const Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    message: message,
    duration: duration,
    animationDuration: _animationDuration,
    mainButton: mainButton,
    flushbarPosition: flushbarPosition,
  ).show(context);
}

Future<void> showErrorFlushbar({
  @required BuildContext context,
  @required String message,
  Duration duration = const Duration(seconds: 4),
  FlushbarPosition flushbarPosition = FlushbarPosition.BOTTOM,
}) async {
  await Flushbar(
    icon: const Icon(
      Icons.error,
      color: Colors.red,
    ),
    message: message,
    duration: duration,
    animationDuration: _animationDuration,
    flushbarPosition: flushbarPosition,
  ).show(context);
}

Future<void> showActionFlushbar({
  @required BuildContext context,
  @required String message,
  Duration duration = const Duration(seconds: 4),
  FlushbarPosition flushbarPosition = FlushbarPosition.BOTTOM,
  @required String actionLabel,
  @required void Function() onActionPressed,
  Color actionTextColor = Colors.yellow,
}) async {
  final mainButton = TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) => actionTextColor,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.grey,
      ),
    ),
    onPressed: onActionPressed,
    child: Text(actionLabel),
  );
  await Flushbar(
    message: message,
    duration: duration,
    animationDuration: _animationDuration,
    mainButton: mainButton,
    flushbarPosition: flushbarPosition,
  ).show(context);
}