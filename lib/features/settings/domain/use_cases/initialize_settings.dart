import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/failures/failures.dart';
import '../models/settings_model.dart';
import '../repositories/settings_repo.dart';

@lazySingleton
class InitializeSettings {
  InitializeSettings({
    @required this.settingsRepo,
  });

  final SettingsRepo settingsRepo;

  Future<Either<Failures, SettingsModel>> call() async {
    final result = await settingsRepo.getSettingsData();
    return result;
  }
}
