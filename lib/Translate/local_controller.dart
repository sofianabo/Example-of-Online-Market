import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

// ignore: camel_case_types
class localeController extends GetxController {
  Locale init = Locale("en");
  // Locale init = lang!.getString("lang") == null
  //     ? Get.deviceLocale!
  //     : Locale(lang!.getString(("lang"))!);

  // void changelang(String l) {
  //   Locale locale = Locale(l);
  //   lang!.setString("lang", l);
  //   Get.updateLocale(locale);
  //   update();
  // }
}