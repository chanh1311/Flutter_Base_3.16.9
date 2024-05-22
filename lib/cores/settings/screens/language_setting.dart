
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_constants.dart';
import '../repositories/setting_controller.dart';

class LanguageSetting extends StatelessWidget {
  final constantController = Get.put(AppConstants());
  final settingController = Get.put(SettingController());

  LanguageSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    constantController.langLocate.value = Get.locale.toString();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('setting_language'.tr,
            style: TextStyle(color: Get.theme.primaryColor)),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Obx(
                    () => Radio<String>(
                      groupValue: constantController.langLocate.value,
                      value: 'en_US',
                      onChanged: (String? value) {
                        if(value != null){
                          final locale = Locale(value);
                          Get.updateLocale(locale);
                          constantController.langLocate.value = value;

                          settingController.updateLanguage();
                        }
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      const locale = Locale('en_US');
                      Get.updateLocale(locale);
                      constantController.langLocate.value = 'en_US';
                      settingController.updateLanguage();
                    },
                    child: Text(
                      'English',
                      style: Get.textTheme.bodyText2,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Obx(
                    () => Radio<String>(
                      groupValue: constantController.langLocate.value,
                      value: 'vi_VN',
                      onChanged: (String? value) {
                        if(value != null){
                          final locale = Locale(value);
                          Get.updateLocale(locale);
                          constantController.langLocate.value = value;
                          settingController.updateLanguage();
                        }

                      },
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        const locale = Locale('vi_VN');
                        Get.updateLocale(locale);
                        constantController.langLocate.value = 'vi_VN';
                        settingController.updateLanguage();
                      },
                      child: Text(
                        'Vietnamese / Tiếng Việt',
                        style: Get.textTheme.bodyText2,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
