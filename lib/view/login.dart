// ignore: must_be_immutable, camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/local/themeController.dart';
import 'package:getx/main.dart';
import 'package:getx/view/Home.dart';
import 'package:getx/widgets/TextField.dart';

// ignore: camel_case_types, must_be_immutable, unused_element
class Login extends StatelessWidget {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  themeController th = Get.find();

  Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 50,
          title: Text(
            "1".tr,
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 1000,
              width: 500,
              child: Image.asset(
                "images/background.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Opacity(
              opacity: 0.85,
              child: Center(
                child: Container(
                  width: 350,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[500],
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(15, 15),
                          blurRadius: 20,
                          spreadRadius: 10),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextForm1(
                              controller: c1,
                              maxlength: 25,
                              labeltext: "4".tr,
                              activeLabel: Colors.amberAccent,
                              colorlabel: Colors.black,
                              prifexIcon: Icons.account_box,
                              prifexColor: Colors.black,
                              focasBorder: Colors.amberAccent),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: TextForm1(
                                controller: c2,
                                maxlength: 10,
                                labeltext: "5".tr,
                                activeLabel: Colors.amberAccent,
                                colorlabel: Colors.black,
                                prifexIcon: Icons.lock,
                                prifexColor: Colors.black,
                                focasBorder: Colors.amberAccent),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MaterialButton(
                            onPressed: () async {
                              username!.setString("id", c1.text);
                              password!.setString("pass", c2.text);
                              if (Get.isDarkMode) {
                                mode!.setBool("mode", true);
                                th.changebool();

                                Get.to(() => Home());
                              } else {
                                th.changebool();

                                Get.to(() => Home());
                              }
                            },
                            color: Colors.amberAccent,
                            child: Text("1".tr,
                                style: const TextStyle(color: Colors.black)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "10".tr,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "11".tr,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
