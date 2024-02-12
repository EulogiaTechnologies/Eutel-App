import 'dart:io';

import 'package:image_picker/image_picker.dart';

class PickImage {
  static Future<File?> pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);

    if (image != null) {
      return File(image.path);
    } else {
      return null;
    }
  }
}
