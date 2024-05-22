
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_constants.dart';

class FontSizeSetting extends StatelessWidget {
  final constantController = Get.put(AppConstants());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setting_font'.tr,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Obx(
                        () => Radio<double>(
                          groupValue: constantController.textScale.value,
                          value: 0.8,
                          onChanged: (double? value) {
                            if(value != null) {
                              constantController.textScale.value = value;
                              Get.appUpdate();
                            }
                          },
                        ),
                      ),
                      const Text(
                        'A',
                        textScaleFactor: 0.8,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Obx(() => Radio<double>(
                            groupValue: constantController.textScale.value,
                            value: 0.9,
                            onChanged: (double? value) {
                              if(value != null) {
                                constantController.textScale.value = value;
                                Get.appUpdate();
                              }
                            },
                          )),
                      const Text(
                        'A',
                        textScaleFactor: 0.9,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Obx(() => Radio<double>(
                            groupValue: constantController.textScale.value,
                            value: 1.0,
                            onChanged: (double? value) {
                              if(value != null) {
                                constantController.textScale.value = value;
                                Get.appUpdate();
                              }
                            },
                          )),
                      const Text(
                        'A',
                        textScaleFactor: 1.0,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Obx(() => Radio<double>(
                            groupValue: constantController.textScale.value,
                            value: 1.2,
                            onChanged: (double? value) {
                              if(value != null) {
                                constantController.textScale.value = value;
                                Get.appUpdate();
                              }
                            },
                          )),
                      const Text(
                        'A',
                        textScaleFactor: 1.2,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Obx(() => Radio<double>(
                            groupValue: constantController.textScale.value,
                            value: 1.4,
                            onChanged: (double? value) {
                              if(value != null){
                                constantController.textScale.value = value;
                                Get.appUpdate();
                              }
                            },
                          )),
                      const Text(
                        'A',
                        textScaleFactor: 1.4,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'setting_fontsize_title'.tr,
                    style: Get.textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'setting_fontsize_body'.tr,
                    style: Get.textTheme.bodyText1,
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
