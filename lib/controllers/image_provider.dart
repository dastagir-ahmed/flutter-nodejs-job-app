import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:uuid/uuid.dart';

class ImageUpoader extends ChangeNotifier {
  var uuid = Uuid();
  final ImagePicker _picker = ImagePicker();

  String? imageUrl;
  String? imagePath;

  bool _doneUploading = false;

  bool get loggedIn => _doneUploading;

  set uploading(bool newState) {
    _doneUploading = newState;
    notifyListeners();
  }


  List<String> imageFil = [];

  void pickImage() async {
    XFile? _imageFile = await _picker.pickImage(source: ImageSource.gallery);

    if (_imageFile != null) {
      imageFil.add(_imageFile.path);
      imageUpload(_imageFile).then((value) {
        uploading = true;
      });
      imagePath = _imageFile.path;
    } else {
      return;
    }
  }

  Future<String?> imageUpload(XFile upload) async {
    File image = File(upload.path);

    final ref = FirebaseStorage.instance
        .ref()
        .child("jobhub")
        .child("${uuid.v1()}.jpg");
    await ref.putFile(image);

    imageUrl = (await ref.getDownloadURL());

    return imageUrl;
  }
}
