import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart/getAllProductsController.dart';
import 'package:getx/local/local_controller.dart' show localeController;
import 'package:getx/local/themeController.dart';

import 'package:getx/view/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local/local.dart';

SharedPreferences? username;
SharedPreferences? password;
SharedPreferences? lang;
SharedPreferences? mode;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  username = await SharedPreferences.getInstance();
  password = await SharedPreferences.getInstance();
  lang = await SharedPreferences.getInstance();
  mode = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(getAllProductsController());
    localeController loc = Get.put(localeController(), permanent: true);
    themeController th = Get.put(themeController(), permanent: true);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GetX",
      translations: MyLocal(),
      locale: loc.init,
      theme: th.changebool(),
      home: SplashScreen(),
      // getPages: [
      //   GetPage(
      //     name: "/",
      //     page: () => SplashScreen(),
      //   ),
      //   GetPage(
      //       name: "/login",
      //       page: () => Login(),
      //       middlewares: [AuthMidlleware()]),
      //   GetPage(name: "/Home", page: () => Home(), binding: productBinding()),
      // ],
    );
  }
}
