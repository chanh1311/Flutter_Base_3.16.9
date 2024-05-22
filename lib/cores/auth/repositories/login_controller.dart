

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';




class LoginController extends GetxController {
  var displayPassword = false.obs;
  var isValidForm = false.obs;
  var isValidOTP = false.obs;
  GetStorage user = GetStorage();

  /// Show/Hidden password on textfield
  void dispalyPassword() {
    displayPassword.value = !displayPassword.value;
  }

  ///Login to use app
  ///
  ///Return True: Request success
  ///Return False: Request failure
  Future<bool> loginUser(String username, String password) async {
    user.write('username', username);
    user.write('user_id', '1');
    // Get.off(() => const EmployeeMainHomePage());
    return true;
  }

  ///Logout
  ///
  ///Return True: Request success
  ///Return False: Request failure
  Future<bool> logout() async {
    user.erase();
    Get.offNamed('/login');
    return true;
  }

}
