import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/failures/failures.dart';
import '../../domain/repositories/settings_repo.dart';

class SettingsRepoImpl implements SettingsRepo {
  static const _keyListCharacters = "settings_list_characters";
  static const _keyListColors = "settings_list_colors";
  static const _keyImageWidth = "settings_image_width";
  static const _keyFontSize = "settings_font_size";
  static const _keyLetterSpacing = "settings_letter_spacing";
  static const _keyRepeatedCharacters = "settings_repeated_characters";
  static const _keyColorReversed = "settings_color_reversed";

  @override
  Future<Either<Failures, double>> getFontSize() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getDouble(_keyFontSize);
      return right(result);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Either<Failures, double>> getImageWidth() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getDouble(_keyImageWidth);
      return right(result);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Either<Failures, double>> getLetterSpacing() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getDouble(_keyLetterSpacing);
      return right(result);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Either<Failures, List<String>>> getListCharacters() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final listCharacters = prefs.getStringList(_keyListCharacters);
      return right(listCharacters);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Either<Failures, List<int>>> getListColors() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final listStrings = prefs.getStringList(_keyListColors);
      if (listStrings == null) {
        return right(null);
      }

      final listColors = listStrings.map(int.parse).toList();
      return right(listColors);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Either<Failures, int>> getRepeatedCharacters() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getInt(_keyRepeatedCharacters);
      return right(result);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Either<Failures, bool>> isColorReversed() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getBool(_keyColorReversed);
      return right(result);
    } catch (e) {
      return left(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setColorReversed({
    bool isColorReversed = false,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyColorReversed, isColorReversed);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setFontSize(double fontSize) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_keyFontSize, fontSize);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setImageWidth(double imageWidth) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_keyImageWidth, imageWidth);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setLetterSpacing(double letterSpacing) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_keyLetterSpacing, letterSpacing);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setListCharacters(
    List<String> listCharacters,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_keyListCharacters, listCharacters);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setListColors(
    List<int> listColors,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final listStrings = listColors.map((color) => color.toString()).toList();
      await prefs.setStringList(_keyListColors, listStrings);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }

  @override
  Future<Option<Failures>> setRepeatedCharacters(
    int repeatedCharacters,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_keyRepeatedCharacters, repeatedCharacters);
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }
}
