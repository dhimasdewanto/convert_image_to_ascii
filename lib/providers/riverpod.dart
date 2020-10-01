import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'get_image_controller.dart';
import 'image_process_controller.dart';

final getImageProvider = StateNotifierProvider((ref) {
  return GetImageController();
});

final imageProcessProvider = StateNotifierProvider((ref) {
  return ImageProcessController();
});
