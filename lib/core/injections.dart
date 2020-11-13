import 'package:image_picker/image_picker.dart';
import 'package:screenshot/screenshot.dart';

import '../features/image_process/domain/use_cases/copy_text_to_clipboard.dart';
import '../features/image_process/domain/use_cases/get_string_buffer.dart';
import '../features/image_process/domain/use_cases/save_image.dart';
import '../features/image_process/presentation/blocs/image_actions/image_actions_bloc.dart';
import '../features/image_process/presentation/blocs/image_process/image_process_bloc.dart';
import '../features/settings/data/repositories/settings_repo_impl.dart';
import '../features/settings/domain/use_cases/initialize_settings.dart';
import '../features/settings/domain/use_cases/update_settings.dart';
import '../features/settings/presentation/blocs/settings/settings_bloc.dart';

mixin Injections {
  ImageActionsBloc get imageActionsBloc {
    final copyTextToClipboard = CopyTextToClipboard();
    final saveImage = SaveImage();
    return ImageActionsBloc(
      copyTextToClipboard: copyTextToClipboard,
      saveImage: saveImage,
    );
  }

  ImageProcessBloc get imageProcessBloc {
    final getStringBuffer = GetStringBuffer();
    final imagePicker = ImagePicker();
    final screenshotController = ScreenshotController();
    return ImageProcessBloc(
      getStringBuffer: getStringBuffer,
      imagePicker: imagePicker,
      screenshotController: screenshotController,
    );
  }

  SettingsBloc get settingsBloc {
    final settingsRepo = SettingsRepoImpl();
    final initializeSettings = InitializeSettings(
      settingsRepo: settingsRepo,
    );
    final updateSettings = UpdateSettings(
      settingsRepo: settingsRepo,
    );
    return SettingsBloc(
      initializeSettings: initializeSettings,
      updateSettings: updateSettings,
    );
  }
}
