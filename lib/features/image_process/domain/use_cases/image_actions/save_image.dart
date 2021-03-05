import 'package:dartz/dartz.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../../core/failures/failures.dart';

class SaveImage {
  Future<Option<Failures>> call(SaveImageParams params) async {
    try {
      final isGranted = await _checkPermission();
      if (isGranted == false) {
        return some(
          const Failures.permissionStorateNotGranted(),
        );
      }

      final tempDir = await getTemporaryDirectory();
      final path = tempDir.path;
      final imagePath = await params.screenshotController.captureAndSave(
        path,
        pixelRatio: 1.5,
        fileName: "ascii_image_${DateTime.now().millisecondsSinceEpoch}.png",
      );

      // path = /data/user/0/com.dhimasdewanto.ascii_image_generator/app_flutter/2021-02-26T15:40:14.490865.png
      final isSuccess = await GallerySaver.saveImage(
        imagePath,
        albumName: "Pictures/ASCII Image",
      );

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

  Future<bool> _checkPermission() async {
    final bool? permission = await Permission.storage.isGranted;

    // If permission not granted, ask user.
    if (permission == false) {
      final PermissionStatus? request = await Permission.storage.request();
      return request?.isGranted ?? false;
    }

    return permission ?? false;
  }
}

class SaveImageParams {
  SaveImageParams({
    required this.screenshotController,
  });

  final ScreenshotController screenshotController;
}
