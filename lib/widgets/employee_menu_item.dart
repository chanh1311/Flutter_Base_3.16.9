
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeMenuItem extends StatelessWidget {
  const EmployeeMenuItem({
    Key? key,
    required this.icon,
    required this.background,
    required this.title,
    required this.borderRadius,
    required this.target
  }) : super(key: key);

  final BorderRadius borderRadius;
  final Image icon;
  final Color background;
  final String title;
  final String target;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(target);
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: icon,
              ),
              // CircleAvatar(
              //   // backgroundColor: background,
              //   // radius: 20,
              //   child:  icon,
              // ),
              Text(
                title.tr,
                style: Get.textTheme.subtitle2,
              ),
            ],
          )),
    );
  }
}