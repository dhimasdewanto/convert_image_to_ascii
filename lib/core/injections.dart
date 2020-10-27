import 'package:image_picker/image_picker.dart';

import '../features/image_process/domain/use_cases/get_string_buffer.dart';
import '../features/image_process/presentation/blocs/image_process/image_process_bloc.dart';
import '../features/settings/data/repositories/settings_repo_impl.dart';
import '../features/settings/domain/use_cases/initialize_settings.dart';
import '../features/settings/domain/use_cases/update_settings.dart';
import '../features/settings/presentation/blocs/settings/settings_bloc.dart';

mixin Injections {
  ImageProcessBloc get imageProcessBloc {
    final getStringBuffer = GetStringBuffer();
    final imagePicker = ImagePicker();
    return ImageProcessBloc(
      getStringBuffer: getStringBuffer,
      imagePicker: imagePicker,
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
