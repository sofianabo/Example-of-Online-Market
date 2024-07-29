import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/login.dart';

class Slider1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                items: ["images/slider1.jpg", "images/slider1.jpg"].map((e) {
                  return Builder(
                    builder: ((context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "$e",
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  viewportFraction: 0.8,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Buy and sell Online",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.amber[600])),
                onPressed: () {
                  Get.to(() => Login());
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
