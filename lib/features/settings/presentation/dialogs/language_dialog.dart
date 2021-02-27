import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/locales.dart';
import '../../../../core/navigators.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("Change Language"),
      children: [
        ListTile(
          title: const Text("English"),
          onTap: () {
            context.locale = getLocale('en_US');
            pop(context: context);
          },
        ),
        ListTile(
          title: const Text("Indonesia"),
          onTap: () {
            context.locale = getLocale('id_ID');
            pop(context: context);
          },
        ),
      ],
    );
  }
}
