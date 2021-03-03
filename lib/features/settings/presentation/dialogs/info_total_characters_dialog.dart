import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigators.dart';
import '../blocs/helper/helper_bloc.dart';

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
                    ..onTap = () {
                      context.read<HelperBloc>().add(HelperStatus.characters);
                      pop(context: context);
                    },
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
                    ..onTap = () {
                      context.read<HelperBloc>().add(HelperStatus.colors);
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
                  "Merupakan jumlah keseluruhan ASCII karakter. Ini mempengaruhi pengaturan di",
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: " karakter",
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
                  text: " warna",
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: color,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.read<HelperBloc>().add(HelperStatus.colors);
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
