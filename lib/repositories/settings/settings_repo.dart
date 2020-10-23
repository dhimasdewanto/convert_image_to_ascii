import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../failures/failures.dart';

abstract class SettingsRepo {
  Future<Either<Failures, List<String>>> getListCharacters();
  Future<Either<Failures, List<int>>> getListColors();
  Future<Option<Failures>> setListCharacters(List<String> listCharacters);
  Future<Option<Failures>> setListColors(List<int> listColors);
}

class SettingsRepoImpl implements SettingsRepo {
  static const _keyListCharacters = "list_characters";
  static const _keyListColors = "list_colors";

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
  Future<Option<Failures>> setListCharacters(
    List<String> listCharacters,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(
        _keyListCharacters,
        listCharacters,
      );
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
      await prefs.setStringList(
        _keyListColors,
        listStrings,
      );
      return none();
    } catch (e) {
      return some(const Failures.unexpected());
    }
  }
}
