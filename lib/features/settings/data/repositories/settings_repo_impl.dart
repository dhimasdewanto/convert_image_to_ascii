import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/default_values.dart';
import '../../../../core/failures/failures.dart';
import '../../domain/models/settings_model.dart';
import '../../domain/repositories/settings_repo.dart';

@LazySingleton(as: SettingsRepo)
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
          listCharacters: settingsRaw.listCharacters ?? dListCharacters,
          listColorValues: settingsRaw.listColorValues ?? dListColors,
          imageWidth: settingsRaw.imageWidth ?? defaultImageWidth,
          repeatedCharacters:
              settingsRaw.repeatedCharacters ?? defaultRepeatCharacter,
          isColorReversed: settingsRaw.isColorReversed ?? defaultReverseColor,
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
