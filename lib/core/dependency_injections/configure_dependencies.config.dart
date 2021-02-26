// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';

import 'package:image_picker/image_picker.dart';
import 'package:screenshot/screenshot.dart';

import '../../features/image_process/domain/use_cases/image_actions/copy_text_to_clipboard.dart';
import '../../features/settings/domain/use_cases/get_settings.dart';
import '../../features/image_process/domain/use_cases/image_process/get_string_buffer.dart';
import '../../features/image_process/presentation/blocs/image_actions/image_actions_bloc.dart';
import '../../features/image_process/presentation/blocs/image_process/image_process_bloc.dart';
import 'register_modules.dart';
import '../../features/image_process/domain/use_cases/image_actions/save_image.dart';
import '../../features/settings/presentation/blocs/settings/settings_bloc.dart';
import '../../features/settings/domain/repositories/settings_repo.dart';
import '../../features/settings/data/repositories/settings_repo_impl.dart';
import '../../features/settings/domain/use_cases/update_settings.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.lazySingleton<CopyTextToClipboard>(() => CopyTextToClipboard());
  gh.lazySingleton<GetStringBuffer>(() => GetStringBuffer());
  gh.lazySingleton<ImagePicker>(() => registerModules.imagePicker);
  gh.lazySingleton<SaveImage>(() => SaveImage());
  gh.lazySingleton<ScreenshotController>(
      () => registerModules.screenshotController);
  gh.lazySingleton<SettingsRepo>(() => SettingsRepoImpl());
  gh.lazySingleton<UpdateSettings>(
      () => UpdateSettings(settingsRepo: get<SettingsRepo>()));
  gh.lazySingleton<GetSettings>(
      () => GetSettings(settingsRepo: get<SettingsRepo>()));
  gh.factory<ImageActionsBloc>(() => ImageActionsBloc(
      copyTextToClipboard: get<CopyTextToClipboard>(),
      saveImage: get<SaveImage>()));
  gh.factory<ImageProcessBloc>(() => ImageProcessBloc(
        getSettings: get<GetSettings>(),
        getStringBuffer: get<GetStringBuffer>(),
        imagePicker: get<ImagePicker>(),
        screenshotController: get<ScreenshotController>(),
      ));
  gh.factory<SettingsBloc>(() => SettingsBloc(
      getSettings: get<GetSettings>(), updateSettings: get<UpdateSettings>()));
  return get;
}

class _$RegisterModules extends RegisterModules {
  @override
  ImagePicker get imagePicker => ImagePicker();
  @override
  ScreenshotController get screenshotController => ScreenshotController();
}
