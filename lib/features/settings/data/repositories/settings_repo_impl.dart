import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/default_values.dart';
import '../../../../core/failures/failures.dart';
import '../../domain/models/settings_model.dart';
import '../../domain/repositories/settings_repo.dart';

class SettingsRepoImpl implements SettingsRepo {
  static const _keySettingsData = "settings_data";

  @override
  Future<Either<Failures, SettingsModel>> getSettingsData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getString(_keySettingsData);

      if (result == null) {
        return right(
          SettingsModel(
            listCharacters: defaultListCharacters,
            listColorValues: defaultListColors,
            imageWidth: defaultImageWidth,
            repeatedCharacters: defaultRepeatCharacter,
            isColorReversed: defaultReverseColor,
            letterSpacing: defaultLetterSpacing,
            fontSize: defaultFontSize,
            convertToGrayscale: defaultToGrayscale,
          ),
        );
      }

      final settingsRaw = SettingsModel.fromJson(result);
      return right(
        SettingsModel(
          listCharacters: settingsRaw.listCharacters ?? defaultListCharacters,
          listColorValues: settingsRaw.listColorValues ?? defaultListColors,
          imageWidth: settingsRaw.imageWidth ?? defaultImageWidth,
          repeatedCharacters:
              settingsRaw.repeatedCharacters ?? defaultRepeatCharacter,
          isColorReversed: settingsRaw.isColorReversed ?? defaultReverseColor,
          letterSpacing: settingsRaw.letterSpacing ?? defaultLetterSpacing,
          fontSize: settingsRaw.fontSize ?? defaultFontSize,
          convertToGrayscale:
              settingsRaw.convertToGrayscale ?? defaultToGrayscale,
        ),
      );
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setSettingsData(
    SettingsModel settingsData,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keySettingsData, settingsData.toJson());
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }
}
