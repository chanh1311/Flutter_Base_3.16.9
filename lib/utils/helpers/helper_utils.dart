
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

Uint8List stringBase64(String base64String) {
  return base64Decode(base64String);
}

String base64String(Uint8List data) {
  return base64Encode(data);
}

String dateToString(DateTime date) {
  return date.toString();
}

DateTime stringToDate(String date) {
  return DateTime.parse(date);
}

String stringDateFormat(String date, String format) {
  try {
    var dateTime =
        DateFormat("yyyy-MM-ddTHH:mm:ss").parse(date, true).toLocal();
    return DateFormat(format).format(dateTime);
  } catch (e) {
    print(e);
    return '';
  }
}

DateTime? dateToLocal(String date) {
  try {
    return DateFormat("yyyy-MM-ddTHH:mm:ss").parse(date, true).toLocal();
  } catch (e) {
    print(e);
  }
  return null;
}

String? dateToFormatLocal(String date, String lang) {
  try {
    final format = lang == 'vi_VN' ? 'dd-MM-yyyy' : 'MM-dd-yyyy';
    final dateTime = DateTime.parse(date);
    final dateTimeNow = DateTime.now();
    final timeZoneOffset = dateTimeNow.timeZoneOffset;
    final dateTimeInLocal = dateTime.add(timeZoneOffset);
    final isPastDate = dateTimeInLocal.isBefore(dateTimeNow);
    final dateFormat = isPastDate ? '00:00 ' : 'kk:mm ' ;
    final ffinal = dateFormat + format;
    return DateFormat(ffinal).format(dateTime);
  } catch (e) {
    print(e);
  }
  return null;
}

String? dateFormat(DateTime date, String format) {
  try {
    return DateFormat(format).format(date);
  } catch (e) {
    print(e);
  }
  return null;
}

String? dateFormatLocal(String dateTimeString, String lang) {
  try {
    final format = lang == 'vi_VN' ? 'kk:mm dd-MM-yyyy' : 'kk:mm MM-dd-yyyy';
    final dateTime = DateTime.parse(dateTimeString).toLocal();
    final dateTimeNow = DateTime.now();
    final timeZoneOffset = dateTimeNow.timeZoneOffset;
    final dateTimeInLocal = dateTime.add(timeZoneOffset);
    final isPastDate = dateTimeInLocal.isBefore(dateTimeNow);
    final dateFormat = isPastDate ? '00:00' : 'kk:mm';
    final formattedDateTime = DateFormat(format).format(dateTimeInLocal).replaceFirst('24:00', dateFormat);

    return formattedDateTime;
  } catch (e) {
    print(e);
  }
  return null;
}

String timeAgo(String date) {
  timeago.setLocaleMessages('en_US', timeago.EnMessages());
  timeago.setLocaleMessages('vi_VN', timeago.ViMessages());

  try {
    var dateTime =
        DateFormat("yyyy-MM-ddTHH:mm:ss").parse(date, true).toLocal();
    return timeago.format(dateTime,
        allowFromNow: true, locale: Get.locale.toString());
  } catch (e) {
    print(e);
    return '';
  }
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

void gotoFunction(String action, int id) {
// Speak Up
// Survey
// E-learning
// Training
// Announcement
// News
  switch (action) {
    case 'Speak Up':
      GetStorage user = GetStorage();

      if (user.read('user_type') == 'Employee') {
        Get.toNamed('/reporting_detail',
            parameters: {'id': id.toString(), 'type': 'Message'});
      } else {
        Get.toNamed('/reporting_manager_detail',
            parameters: {'id': id.toString(), 'type': 'Message'});
      }
      break;
    case 'Survey':
      GetStorage user = GetStorage();

      if (user.read('user_type') == 'Manager') {
        Get.toNamed('/surveying/answers',
            parameters: {'id': id.toString(), 'title': ''});
      } else {
        Get.toNamed('/surveying/questions',
            parameters: {'id': id.toString(), 'title': ''});
      }
      break;
    case 'Training':
      Get.toNamed('/training/detail', parameters: {
        'id': id.toString(),
      });
      break;
    case 'E-learning':
      Get.toNamed('/learning/file', parameters: {
        'id': id.toString(),
      });
      break;
    case 'News':
      Get.toNamed('/article/detail', parameters: {
        'id': id.toString(),
      });
      break;
    default:
  }
}
