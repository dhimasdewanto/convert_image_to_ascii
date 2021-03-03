import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Information in settings page.
/// Can't use default localization.
class InfoRepeatCharactersDialog extends StatelessWidget {
  const InfoRepeatCharactersDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(20),
      title: Text(tr('repeat_characters_count')),
      children: [
        if (context.locale == const Locale('en', 'US'))
          RichText(
            text: TextSpan(
              text:
                  "The number of times a character is repeated. This affects the total width of the image output.",
              style: DefaultTextStyle.of(context).style,
            ),
          ),
        if (context.locale == const Locale('id', 'ID'))
          RichText(
            text: TextSpan(
              text:
                  "Jumlah dari berapa kali karakter diulang. Ini mempengaruhi dari total lebar sebuah gambar.",
              style: DefaultTextStyle.of(context).style,
            ),
          ),
      ],
    );
  }
}
