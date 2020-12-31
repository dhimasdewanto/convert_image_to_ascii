import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/failures/failures.dart';
import '../repositories/settings_repo.dart';

@lazySingleton
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
              params.repeatedCharacters ?? prevSettings.repeatedCharacters,
          convertToGrayscale:
              params.convertToGrayscale ?? prevSettings.convertToGrayscale,
          isColorReversed:
              params.isColorReversed ?? prevSettings.isColorReversed,
          listCharacters: params.listCharacters ?? prevSettings.listCharacters,
          listColorValues:
              params.listColorValues ?? prevSettings.listColorValues,
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
    this.repeatedCharacters,
    this.convertToGrayscale,
    this.isColorReversed,
    this.listCharacters,
    this.listColorValues,
  });

  final int imageWidth;
  final bool isColorReversed;
  final bool convertToGrayscale;
  final List<String> listCharacters;
  final List<int> listColorValues;
  final int repeatedCharacters;
}
