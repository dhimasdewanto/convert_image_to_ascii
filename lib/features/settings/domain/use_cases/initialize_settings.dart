import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/default_values.dart';
import '../../../../core/failures/failures.dart';
import '../models/settings_model.dart';
import '../repositories/settings_repo.dart';

class InitializeSettings {
  InitializeSettings({
    @required this.settingsRepo,
  });

  final SettingsRepo settingsRepo;

  Future<Either<Failures, SettingsModel>> call() async {
    final resultCharacters = await settingsRepo.getListCharacters();
    final resultListColorValues = await settingsRepo.getListColors();

    Failures failures;
    final listCharacters = resultCharacters.fold(
      (f) {
        failures = f;
        return null;
      },
      (list) {
        if (list == null) {
          return defaultListCharacters;
        }
        return list;
      },
    );
    final listColorValues = resultListColorValues.fold(
      (f) {
        failures = f;
        return null;
      },
      (list) {
        if (list == null) {
          return defaultListColors;
        }
        return list;
      },
    );

    if (failures != null) {
      return left(failures);
    }
    return right(SettingsModel(
      listCharacters: listCharacters,
      listColorValues: listColorValues,
    ));
  }
}
