import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/view/settings.dart';
import 'package:getx/widgets/buttons.dart';

// ignore: must_be_immutable
class DrawerCustom extends StatelessWidget {
  DrawerCustom({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          height: 200,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://th.bing.com/th/id/OIP.3QfCFVugR9uMH5ILbK3RwAHaIE?rs=1&pid=ImgDetMain",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Text("${username!.getString("id")}"),
                    ),
                    const Text("sofian@gmail.com")
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text(
                "19".tr,
              ),
            ),
            ListTile(
              title: Text(
                "20".tr,
              ),
            ),
            ListTile(
              title: Text(
                "21".tr,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SettingsView());
              },
              child: ListTile(
                title: Text(
                  "22".tr,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40.0, right: 40),
          child: logOutButton(),
        )
      ],
    );
  }
}
