import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:screenshot/screenshot.dart';

@module
abstract class RegisterModules {
  @lazySingleton
  ImagePicker get imagePicker;
 
  @lazySingleton
  ScreenshotController get screenshotController;
}