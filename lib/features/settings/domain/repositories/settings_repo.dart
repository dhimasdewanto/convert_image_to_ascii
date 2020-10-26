import 'package:dartz/dartz.dart';

import '../../../../core/failures/failures.dart';

abstract class SettingsRepo {
  Future<Either<Failures, List<String>>> getListCharacters();
  Future<Either<Failures, List<int>>> getListColors();
  Future<Either<Failures, double>> getImageWidth();
  Future<Either<Failures, double>> getLetterSpacing();
  Future<Either<Failures, double>> getFontSize();
  Future<Either<Failures, int>> getRepeatedCharacters();
  Future<Either<Failures, bool>> isColorReversed();
  
  Future<Option<Failures>> setListCharacters(List<String> listCharacters);
  Future<Option<Failures>> setListColors(List<int> listColors);
  Future<Option<Failures>> setImageWidth(double imageWidth);
  Future<Option<Failures>> setLetterSpacing(double letterSpacing);
  Future<Option<Failures>> setFontSize(double fontSize);
  Future<Option<Failures>> setRepeatedCharacters(int repeatedCharacters);
  Future<Option<Failures>> setColorReversed({
    bool isColorReversed = false,
  });
}
