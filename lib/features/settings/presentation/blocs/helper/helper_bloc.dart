import 'package:bloc/bloc.dart';

enum HelperStatus {
  initial,
  totalCharacters,
  characters,
  colors,
}

class HelperBloc extends Bloc<HelperStatus, HelperStatus> {
  HelperBloc() : super(HelperStatus.initial);

  @override
  Stream<HelperStatus> mapEventToState(HelperStatus event) async* {
    yield event;

    await Future.delayed(const Duration(seconds: 3));

    yield HelperStatus.initial;
  }
}
