// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/API/getOneProducts.dart';
import 'package:getx/controller.dart/getAllProductsController.dart';
import 'package:getx/local/local_controller.dart';
import 'package:getx/view/productInformation.dart';
import 'package:getx/widgets/drawer.dart';
import 'package:getx/widgets/search.dart';

import '../main.dart';

int? i;

// ignore: must_be_immutable, use_key_in_widget_constructors
class Home extends StatelessWidget {
  final pro = Get.find<getAllProductsController>();

  List category = [
    {
      "title": "14",
      "icon": const Icon(
        Icons.laptop,
        size: 40,
      ),
    },
    {
      "title": "15",
      "icon": const Icon(
        Icons.phone_android,
        size: 40,
      ),
    },
    {
      "title": "PS/Xbox",
      "icon": const Icon(
        Icons.gamepad,
        size: 40,
      ),
    },
    {
      "title": "16",
      "icon": const Icon(
        Icons.devices_other,
        size: 40,
      ),
    },
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _hight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              showSearch(context: context, delegate: customSearch());
            },
          ),
        ),
        endDrawer: Drawer(
          child: DrawerCustom(),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(children: [
            SizedBox(
              height: _hight * 0.14,
              width: _width,
              child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: lang!.getString(("lang")) == "en"
                          ? EdgeInsets.only(
                              right: _width * 0.08, left: _width * 0.06)
                          : EdgeInsets.only(
                              left: _width * .055, right: _width * 0.03),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.amberAccent),
                            child: category[index]["icon"],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          GetBuilder<localeController>(
                              init: localeController(),
                              builder: (context) {
                                return Text(
                                  "${category[index]["title"]}".tr,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                );
                              })
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              if (pro.isloading.value) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                );
              } else {
                return Expanded(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 300),
                    itemBuilder: (context, index) {
                      return Hero(
                        tag: '${pro.productsList[index].image}',
                        child: GestureDetector(
                          onTap: () async {
                            i = index;
                            print(i);
                            await getoneProductsAPI()
                                .getoneProducts(pro.productsList[index].id!);

                            Get.to(
                              () => productInfo(),
                            );
                          },
                          child: Card(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: ListView(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 200,
                                      child: Image.network(
                                          "${pro.productsList[index].image}"),
                                    ),
                                    Wrap(
                                      children: [
                                        Text(
                                          "${pro.productsList[index].title}",
                                          overflow: TextOverflow.visible,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${pro.productsList[index].price}",
                                          style: const TextStyle(
                                              color: Colors.amberAccent),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: pro.productsList.length,
                  ),
                );
              }
            })
          ]),
        ));
  }
}
