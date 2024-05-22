

import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repositories/login_controller.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GetStorage user = GetStorage();
  final loginController = Get.put(LoginController());

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var width = Get.width;

  var headerHeight = Get.height / 5;

  var topBox = Get.height / 5 - 24;

  var boxHeight = 580.0;

  bool isActive = false;

  @override
  void initState() {
    if(user.read('username') != '' && user.read('username') != null){
      Get.offNamed('/login');
    }
    super.initState();
  }


  Widget build(BuildContext context) {
    usernameController.addListener(() {
      if (usernameController.text.trim()== '' || passwordController.text == '') {
        loginController.isValidForm.value = false;
        setState(() {
          isActive = false;
        });
      } else {
        loginController.isValidForm.value = true;
        setState(() {
          isActive = true;
        });
      }
    });
    passwordController.addListener(() {
      if (usernameController.text == '' || passwordController.text == '') {
        loginController.isValidForm.value = false;
        setState(() {
          isActive = false;
        });
      } else {
        loginController.isValidForm.value = true;
        setState(() {
          isActive = true;
        });
      }
    });

    loginController.isValidForm.value = false;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: width,
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: headerHeight/4,),
                  
                SizedBox(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'assets/logo/logo.png',
                    width: 150,
                  ),
                ),
                  
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Text(
                      'login_title'.tr.toUpperCase(),
                      style: Get.theme.textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600
                      ),
                    ),   
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 32, left: 20, right: 20),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Get.theme.colorScheme.secondary), // Màu viền khi focus
                          ),
                          labelText: 'login_username'.tr,
                          labelStyle: TextStyle(
                            color: Get.theme.primaryColor, // Màu cho nhãn
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Obx(
                        () => TextField(
                          controller: passwordController,
                          obscureText: !loginController.displayPassword.value,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Get.theme.colorScheme.secondary), // Màu viền khi focus
                              ),
                              labelStyle: TextStyle(
                                color: Get.theme.primaryColor, // Màu cho nhãn
                              ),
                              labelText: 'login_password'.tr,
                              isDense: true,
                              suffixIcon: InkWell(
                                  onTap: loginController.dispalyPassword,
                                  child: loginController.displayPassword.value
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.remove_red_eye))),
                        ),
                      ),
                    ),
            
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: SizedBox(
                        width: width,
                        height: 48,
                        child: Obx(
                          () => ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )
                              )
                            ),
                            onPressed: loginController.isValidForm.value == false && isActive == false
                                ? null
                                : () {
                                    if (!GetUtils.isUsername(usernameController.text)) {
                                      Get.snackbar('validation_title'.tr,
                                          'login_valid_username'.tr,
                                          snackPosition: SnackPosition.BOTTOM);
                                    } else if (GetUtils.isBlank(passwordController.text)!) {
                                      Get.snackbar('validation_title'.tr,
                                          'login_valid_password'.tr,
                                          snackPosition: SnackPosition.BOTTOM);
                                    } else {
                                      loginController.loginUser(usernameController.text,
                                          passwordController.text);
                                    }
                                  },
                            child: Text(
                              'login_button'.tr.toUpperCase(),
                            ),
                          ),
                        ),
                      ),
                    ),
            
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Copyright @ 2023 by Liink.Ltd",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Version 1.0",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: width > 600 ? 80 : 32,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
