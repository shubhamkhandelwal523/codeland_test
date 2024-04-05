import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadProvider extends ChangeNotifier {
  File? _image;

  File? get image => _image;

  Future<void> pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners();
    } else {
      print('No image selected.');
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
