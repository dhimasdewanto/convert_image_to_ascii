import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_actions_event.dart';
part 'image_actions_state.dart';
part 'image_actions_bloc.freezed.dart';

class ImageActionsBloc extends Bloc<ImageActionsEvent, ImageActionsState> {
  ImageActionsBloc() : super(const ImageActionsState.initial());

  @override
  Stream<ImageActionsState> mapEventToState(
    ImageActionsEvent event,
  ) async* {
    yield* event.maybeWhen(
      orElse: () async* {},
    );
  }
}
