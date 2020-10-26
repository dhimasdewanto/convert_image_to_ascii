import 'package:dartz/dartz.dart';

import '../../../../core/failures/failures.dart';

abstract class SettingsRepo {
  Future<Either<Failures, List<String>>> getListCharacters();
  Future<Either<Failures, List<int>>> getListColors();
  Future<Option<Failures>> setListCharacters(List<String> listCharacters);
  Future<Option<Failures>> setListColors(List<int> listColors);
}