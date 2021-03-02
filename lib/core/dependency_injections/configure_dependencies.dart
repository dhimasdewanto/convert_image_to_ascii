import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:screenshot/screenshot.dart';

import '../../features/image_process/domain/use_cases/image_actions/copy_text_to_clipboard.dart';
import '../../features/image_process/domain/use_cases/image_actions/save_image.dart';
import '../../features/image_process/domain/use_cases/image_process/get_string_buffer.dart';
import '../../features/image_process/presentation/blocs/image_actions/image_actions_bloc.dart';
import '../../features/image_process/presentation/blocs/image_process/image_process_bloc.dart';
import '../../features/settings/data/repositories/settings_repo_impl.dart';
import '../../features/settings/domain/repositories/settings_repo.dart';
import '../../features/settings/domain/use_cases/get_settings.dart';
import '../../features/settings/domain/use_cases/update_settings.dart';
import '../../features/settings/presentation/blocs/helper/helper_bloc.dart';
import '../../features/settings/presentation/blocs/settings/settings_bloc.dart';

final getIt = GetIt.instance;

void inject() {
  registerModules();
  registerRepositories();
  registerUseCases();
  registerBloc();
}

void registerBloc() {
  getIt.registerFactory<ImageActionsBloc>(() => ImageActionsBloc(
        copyTextToClipboard: getIt<CopyTextToClipboard>(),
        saveImage: getIt<SaveImage>(),
      ));
  getIt.registerFactory<ImageProcessBloc>(() => ImageProcessBloc(
        getSettings: getIt<GetSettings>(),
        getStringBuffer: getIt<GetStringBuffer>(),
        imagePicker: getIt<ImagePicker>(),
        screenshotController: getIt<ScreenshotController>(),
      ));
  getIt.registerFactory<SettingsBloc>(() => SettingsBloc(
        getSettings: getIt<GetSettings>(),
        updateSettings: getIt<UpdateSettings>(),
      ));
  getIt.registerFactory<HelperBloc>(() => HelperBloc());
}

void registerUseCases() {
  getIt.registerLazySingleton<CopyTextToClipboard>(() => CopyTextToClipboard());
  getIt.registerLazySingleton<GetSettings>(
      () => GetSettings(settingsRepo: getIt<SettingsRepo>()));
  getIt.registerLazySingleton<GetStringBuffer>(() => GetStringBuffer());
  getIt.registerLazySingleton<SaveImage>(() => SaveImage());
  getIt.registerLazySingleton<UpdateSettings>(
      () => UpdateSettings(settingsRepo: getIt<SettingsRepo>()));
}

void registerRepositories() {
  getIt.registerLazySingleton<SettingsRepo>(() => SettingsRepoImpl());
}

void registerModules() {
  getIt.registerSingleton<ImagePicker>(ImagePicker());
  getIt.registerSingleton<ScreenshotController>(ScreenshotController());
}
