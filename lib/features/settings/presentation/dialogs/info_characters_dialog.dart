import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Information in settings page.
/// Can't use default localization.
class InfoCharactersDialog extends StatelessWidget {
  const InfoCharactersDialog({
    Key? key,
    // required this.toTotalCharacters,
  }) : super(key: key);

  // final Future<void> Function() toTotalCharacters;

  // Future<void> _toTotalCharacters(BuildContext context) async {
  //   pop(context: context);
  //   await toTotalCharacters();
  // }

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
                  "This is to set the characters that appear in the image results. The number of characters can be set",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " here",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {},
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
                  "Untuk mengatur karakter yang muncul di hasil gambar. Jumlah karakter dapat diatur di ",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " sini",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {},
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
