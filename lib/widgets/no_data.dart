
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.grey.withOpacity(0.4),
          size: 60,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'no_data_title'.tr,
          style:
              Get.textTheme.headline6?.copyWith(color: Get.theme.primaryColor),
        ),
        Text(
          'no_data_description'.tr,
          style: Get.textTheme.bodyText2,
        ),
      ],
    ));
  }
}
