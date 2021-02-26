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

      final dListCharacters = List<String>.from(defaultListCharacters);
      final dListColors = List<int>.from(defaultListColors);

      if (result == null) {
        return right(
          SettingsModel(
            listCharacters: dListCharacters,
            listColorValues: dListColors,
            imageWidth: defaultImageWidth,
            repeatedCharacters: defaultRepeatCharacter,
            isColorReversed: defaultReverseColor,
            convertToGrayscale: defaultToGrayscale,
          ),
        );
      }

      final settingsRaw = SettingsModel.fromJson(result);
      return right(
        SettingsModel(
          listCharacters: settingsRaw.listCharacters,
          listColorValues: settingsRaw.listColorValues,
          imageWidth: settingsRaw.imageWidth,
          repeatedCharacters: settingsRaw.repeatedCharacters,
          isColorReversed: settingsRaw.isColorReversed,
          convertToGrayscale: settingsRaw.convertToGrayscale,
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
