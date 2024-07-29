import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/view/Home.dart';
import 'package:getx/view/slider.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() {
    var d = Duration(seconds: 8);
    return Timer(d, route);
  }

  route() {
    if (username!.getString('id') != null) {
      Get.to(() => Home());
    } else {
      Get.to(() => Slider1());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Lottie.asset('images/splash.json'),
      )),
    );
  }
}
