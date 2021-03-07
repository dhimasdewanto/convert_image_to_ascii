import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/helper/helper_bloc.dart';

/// Information in settings page.
/// Can't use default localization.
class InfoCharactersDialog extends StatelessWidget {
  const InfoCharactersDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(20),
      title: Text(tr('characters')),
      children: [
        if (context.locale == const Locale('en', 'US'))
          RichText(
            text: TextSpan(
              text:
                  "This is to set the characters that appear in the image results. The number of character variations can be set ",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: "here",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context
                          .read<HelperBloc>()
                          .add(HelperStatus.totalCharacters);
                      pop(context: context);
                    },
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
                  "Untuk mengatur karakter yang muncul di hasil gambar. Jumlah variasi karakter dapat diatur di ",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: "sini",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context
                          .read<HelperBloc>()
                          .add(HelperStatus.totalCharacters);
                      pop(context: context);
                    },
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
