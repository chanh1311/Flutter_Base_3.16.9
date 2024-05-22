
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repositories/login_controller.dart';

class Logout extends StatelessWidget {
  final loginController = Get.put(LoginController());

  Widget build(BuildContext context) {
    loginController.logout();
    return Scaffold(body: Container());
  }
}
