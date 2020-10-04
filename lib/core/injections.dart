import 'package:image_picker/image_picker.dart';

import '../blocs/image_process/image_process_bloc.dart';
import '../use_cases/get_string_buffer.dart';

mixin Injections {
  ImageProcessBloc get imageProcessBloc {
    final getStringBuffer = GetStringBuffer();
    final imagePicker = ImagePicker();
    return ImageProcessBloc(
      getStringBuffer: getStringBuffer,
      imagePicker: imagePicker,
    );
  }
}
