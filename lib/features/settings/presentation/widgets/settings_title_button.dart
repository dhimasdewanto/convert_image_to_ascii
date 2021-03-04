import 'package:flutter/material.dart';

import '../../../../core/navigators.dart';

@Deprecated("No longer use this. Use [AppBar] instead.")
class SettingsTitleButton extends StatelessWidget {
  const SettingsTitleButton({
    Key? key,
    required this.textTitle,
    this.onPressed,
  }) : super(key: key);

  final String textTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final headline6 =
        Theme.of(context).textTheme.headline6 ?? const TextStyle();
    final borderRadius = BorderRadius.circular(100);

    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(
            color: headline6.color ?? Colors.white,
          ),
        ),
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onPressed ?? () => pop(context: context),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textTitle,
                  style: headline6,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.close),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
