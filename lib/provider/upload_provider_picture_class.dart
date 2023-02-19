import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart ' as firebase_storage;
import 'package:untitled/firrstoreservices.dart';
class uploadimage with ChangeNotifier{


    File ? image;
    final picker = ImagePicker();

    firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;


    Future pickedimage() async {
      final imagepick = await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);

      if (imagepick != null) {
        image = File(imagepick.path);

      }


      else {
        print('no image found');
      }

    }

}