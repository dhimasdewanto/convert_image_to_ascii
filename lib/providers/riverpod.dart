import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'image_process_controller.dart';

final imageProcessProvider = Provider((ref) {
  return ImageProcessController();
});