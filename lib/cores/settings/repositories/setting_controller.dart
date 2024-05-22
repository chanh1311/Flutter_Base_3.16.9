
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  GetStorage user = GetStorage();

  var aboutContent = ''.obs;
  var isEnableNotifi = false.obs;

  void onInit() {
    super.onInit();
  }

  Future<void> updateLanguage() async {
    var requestBody = <String, dynamic>{};
    requestBody['lang'] = Get.locale.toString();
    user.write('lang', requestBody['lang']);
  }

}
