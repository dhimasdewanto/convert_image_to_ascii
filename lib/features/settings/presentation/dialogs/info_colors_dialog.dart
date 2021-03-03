import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/helper/helper_bloc.dart';

/// Information in settings page.
/// Can't use default localization.
class InfoColorsDialog extends StatelessWidget {
  const InfoColorsDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).accentColor;

    return SimpleDialog(
      contentPadding: const EdgeInsets.all(20),
      title: Text(tr('colors')),
      children: [
        if (context.locale == const Locale('en', 'US'))
          RichText(
            text: TextSpan(
              text:
                  "This is to set the processed color of an image. Corresponds to the",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " selected characters",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.read<HelperBloc>().add(HelperStatus.characters);
                      pop(context: context);
                    },
                ),
                const TextSpan(
                  text: " and the",
                ),
                TextSpan(
                  text: " total characters",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
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
                  "Untuk mengatur warna yang diproses dari sebuah gambar. Berhubungan dengan",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " karakter yang dipilih",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.read<HelperBloc>().add(HelperStatus.characters);
                      pop(context: context);
                    },
                ),
                const TextSpan(
                  text: " dan",
                ),
                TextSpan(
                  text: " jumlah karakter",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
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
