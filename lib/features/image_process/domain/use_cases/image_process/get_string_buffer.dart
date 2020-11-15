import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../settings/domain/models/settings_model.dart';
import '../../models/image_result_model.dart';
import 'get_string_buffer/process_string_buffer.dart';

@lazySingleton
class GetStringBuffer {
  Future<ImageResultModel> call(GetStringBufferParams params) async {
    return compute(processStringBuffer, params);
  }
}

class GetStringBufferParams {
  GetStringBufferParams({
    @required this.imageFile,
    @required this.settings,
  });

  final File imageFile;
  final SettingsModel settings;
}