
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<String> downloadFile(String url, String filename) async {
  bool checkPermission = await Permission.storage.request().isGranted;
  if (checkPermission == true) {
    String dirloc = "";
    if (Platform.isAndroid) {
      dirloc = "/storage/emulated/0/Download";
    } else {
      dirloc = (await getApplicationDocumentsDirectory()).path;
    }
    String filePathTemp = dirloc + "/" + filename;

    try {

      HttpClient httpClient = new HttpClient();
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();

      if (response.statusCode == 200) {
        var bytes = await consolidateHttpClientResponseBytes(response);
        var file = File(filePathTemp);
        await file.writeAsBytes(bytes);
        return filePathTemp;
      } else {
        return '';
      }
    } catch (e) {
      print(e);
    }
  }
  return '';
}

Future<String> base64File(String base64, String filename) async {
  bool checkPermission = await Permission.storage.request().isGranted;

  if (checkPermission == true) {
    String dirloc = "";
    if (Platform.isAndroid) {
      dirloc = "/storage/emulated/0/Download";
    } else {
      dirloc = (await getApplicationDocumentsDirectory()).path;
    }
    String filePathTemp = dirloc + "/" + filename;
    try {
      Uint8List bytes = base64Decode(base64);
      File file = File(filePathTemp);
      await file.writeAsBytes(bytes);
      return file.path;
    } catch (e) {
      print(e);
    }
  }
  return '';
}
