import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

// ignore: camel_case_types
class logOutButton extends StatelessWidget {
  const logOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.amberAccent,
        onPressed: () {
          Get.defaultDialog(
            title: "3".tr,
            middleText: "6".tr,
            backgroundColor: Colors.grey[700],
            textConfirm: "7".tr,
            textCancel: "8".tr,
            buttonColor: Colors.amberAccent,
            confirmTextColor:
                mode!.getBool("mode") == false ? Colors.black : Colors.white,
            cancelTextColor:
                mode!.getBool("mode") == false ? Colors.black : Colors.white,
            onConfirm: () {
              username!.clear();
              password!.clear();

              Get.offAllNamed("/");
              Get.snackbar(
                "12".tr,
                "13".tr,
                animationDuration: const Duration(seconds: 1),
                duration: const Duration(seconds: 3),
                snackPosition: SnackPosition.BOTTOM,
                barBlur: 100,
                borderRadius: 10,
                borderColor: Colors.black,
                borderWidth: 2,
              );
            },
          );
        },
        child: Text(
          "9".tr,
          // style: const TextStyle(color: Colors.black),
        ));
  }
}
