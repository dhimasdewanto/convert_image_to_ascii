import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failures with _$Failures {
  const factory Failures.copyClipboardFailed() = _CopyClipboardFailed;
  const factory Failures.saveImageFailed() = _SaveImageFailed;
  const factory Failures.permissionStorateNotGranted() =
      _PermissionStorateNotGranted;
  const factory Failures.unexpected() = _UnexpectedFailure;
}
