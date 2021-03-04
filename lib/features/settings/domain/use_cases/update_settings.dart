import 'package:dartz/dartz.dart';

import '../../../../core/default_values.dart';
import '../../../../core/failures/failures.dart';
import '../models/settings_model.dart';
import '../repositories/settings_repo.dart';


class UpdateSettings {
  UpdateSettings({
    required this.settingsRepo,
  });

  final SettingsRepo? settingsRepo;

  Future<Option<Failures>> call(
    UpdateSettingsParams params,
  ) async {
    if (params.isToDefault) {
      return _toDefaultSettings();
    }

    final prevSettingsResult = await settingsRepo!.getSettingsData();
    return prevSettingsResult.fold(
      some,
      (prevSettings) async {
        final listCharacters =
            params.listCharacters ?? prevSettings.listCharacters;
        final listColorValues =
            params.listColorValues ?? prevSettings.listColorValues;

        final newListCharacters = _updateListWithTotalCharacters<String>(
          params: params,
          changedList: listCharacters,
        );
        final newListColorValues = _updateListWithTotalCharacters<int>(
          params: params,
          changedList: listColorValues,
        );

        final currentSettings = prevSettings.copyWith(
          imageWidth: params.imageWidth ?? prevSettings.imageWidth,
          repeatedCharacters:
              params.repeatedCharacters ?? prevSettings.repeatedCharacters,
          listCharacters: newListCharacters,
          listColorValues: newListColorValues,
        );
        final result = await settingsRepo!.setSettingsData(currentSettings);
        return result;
      },
    );
  }

  List<T> _updateListWithTotalCharacters<T>({
    required UpdateSettingsParams params,
    required List<T> changedList,
  }) {
    final newList = List<T>.from(changedList);
    if (params.totalCharacters != null) {
      if (params.totalCharacters! > newList.length) {
        final diff = params.totalCharacters! - newList.length;
        for (var i = 0; i < diff; i++) {
          newList.add(newList.last);
        }
      } else if (params.totalCharacters! < newList.length) {
        final diff = newList.length - params.totalCharacters!;
        for (var i = 0; i < diff; i++) {
          newList.removeLast();
        }
      }
    }
    return newList;
  }

  Future<Option<Failures>> _toDefaultSettings() async {
    final dListCharacters = List<String>.from(defaultListCharacters);
    final dListColors = List<int>.from(defaultListColors);

    final defaultSettings = SettingsModel(
      listCharacters: dListCharacters,
      listColorValues: dListColors,
      imageWidth: defaultImageWidth,
      repeatedCharacters: defaultRepeatCharacter,
      convertToGrayscale: defaultToGrayscale,
    );

    final result = await settingsRepo!.setSettingsData(defaultSettings);
    return result;
  }
}

class UpdateSettingsParams {
  UpdateSettingsParams({
    this.imageWidth,
    this.repeatedCharacters,
    this.listCharacters,
    this.listColorValues,
    this.totalCharacters,
    this.isToDefault = false,
  });

  final int? imageWidth;
  final List<String>? listCharacters;
  final List<int>? listColorValues;
  final int? repeatedCharacters;
  final int? totalCharacters;
  final bool isToDefault;
}
