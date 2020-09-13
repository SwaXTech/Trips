import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:trips_app/Place/repository/firebase_storage_api.dart';

class FirebaseStorage{

  final _firebaseStorageAPI = FirebaseStorageAPI();

  Future<StorageUploadTask> uploadFile(String path, File image) async =>
      _firebaseStorageAPI.uploadFile(path, image);
}