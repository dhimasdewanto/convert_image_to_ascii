import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failures/failures.dart';

@lazySingleton
class CopyTextToClipboard {
  Future<Option<Failures>> call(String text) async {
    try {
      await Clipboard.setData(
        ClipboardData(
          text: text,
        ),
      );
      return none();
    } catch (e) {
      return some(
        const Failures.copyClipboardFailed(),
      );
    }
  }
}
