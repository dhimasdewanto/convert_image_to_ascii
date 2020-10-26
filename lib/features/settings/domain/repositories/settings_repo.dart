import 'package:dartz/dartz.dart';

import '../../../../core/failures/failures.dart';
import '../models/settings_model.dart';

abstract class SettingsRepo {
  Future<Either<Failures, SettingsModel>> getSettingsData();
  Future<Option<Failures>> setSettingsData(SettingsModel settingsData);
}
