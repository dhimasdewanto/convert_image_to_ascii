import 'package:dartz/dartz.dart';
import 'package:gallery_saver/gallery_saver.dart';

import 'package:meta/meta.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../../core/failures/failures.dart';


class SaveImage {
  Future<Option<Failures>> call(SaveImageParams params) async {
    try {
      final image = await params.screenshotController.capture(
        pixelRatio: 1.5,
      );
      
      // path = /data/user/0/com.dhimasdewanto.ascii_image_generator/app_flutter/2021-02-26T15:40:14.490865.png
      final isSuccess = await GallerySaver.saveImage(image.path);

      if (isSuccess == false) {
        return some(
          const Failures.saveImageFailed(),
        );
      }

      return none();
    } catch (e) {
      return some(
        const Failures.saveImageFailed(),
      );
    }
  }
}

class SaveImageParams {
  SaveImageParams({
    @required this.screenshotController,
  });

  final ScreenshotController screenshotController;
}
