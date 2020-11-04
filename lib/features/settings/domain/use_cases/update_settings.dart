import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/failures/failures.dart';
import '../repositories/settings_repo.dart';

class UpdateSettings {
  UpdateSettings({
    @required this.settingsRepo,
  });

  final SettingsRepo settingsRepo;

  Future<Option<Failures>> call(
    UpdateSettingsParams params,
  ) async {
    final prevSettingsResult = await settingsRepo.getSettingsData();
    return prevSettingsResult.fold(
      some,
      (prevSettings) async {
        final currentSettings = prevSettings.copyWith(
          imageWidth: params.imageWidth ?? prevSettings.imageWidth,
          repeatedCharacters:
              params.repeatCharacters ?? prevSettings.repeatedCharacters,
        );
        final result = await settingsRepo.setSettingsData(currentSettings);
        return result;
      },
    );
  }
}

class UpdateSettingsParams {
  UpdateSettingsParams({
    this.imageWidth,
    this.repeatCharacters,
  });

  final int imageWidth;
  final int repeatCharacters;
}
