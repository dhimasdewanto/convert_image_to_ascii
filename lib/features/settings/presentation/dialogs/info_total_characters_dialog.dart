import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/navigators.dart';
import '../pages/character_settings_page.dart';
import '../pages/color_settings_page.dart';

/// Information in settings page.
/// Can't use default localization.
class InfoTotalCharactersDialog extends StatelessWidget {
  const InfoTotalCharactersDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).accentColor;

    return SimpleDialog(
      contentPadding: const EdgeInsets.all(20),
      title: Text(tr('total_characters')),
      children: [
        if (context.locale == const Locale('en', 'US'))
          RichText(
            text: TextSpan(
              text:
                  "Represents the total number of ASCII characters. This affects the settings in",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " characters",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => push(
                          context: context,
                          page: const CharacterSettingsPage(),
                        ),
                ),
                const TextSpan(
                  text: " and",
                ),
                TextSpan(
                  text: " colors",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => push(
                          context: context,
                          page: const ColorSettingsPage(),
                        ),
                ),
                const TextSpan(
                  text: ".",
                ),
              ],
            ),
          ),
        if (context.locale == const Locale('id', 'ID'))
          RichText(
            text: TextSpan(
              text:
                  "Merupakan jumlah keseluruhan ASCII karakter. Ini mempengaruhi pengaturan di",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " karakter",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => push(
                          context: context,
                          page: const CharacterSettingsPage(),
                        ),
                ),
                const TextSpan(
                  text: " dan",
                ),
                TextSpan(
                  text: " warna",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => push(
                          context: context,
                          page: const ColorSettingsPage(),
                        ),
                ),
                const TextSpan(
                  text: ".",
                ),
              ],
            ),
          ),
      ],
    );
  }
}
