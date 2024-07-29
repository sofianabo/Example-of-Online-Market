// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart/BuyController.dart';
import 'package:getx/controller.dart/getAllProductsController.dart';
import 'package:getx/view/Home.dart';

class productInfo extends StatefulWidget {
  const productInfo({super.key});

  @override
  State<productInfo> createState() => _productInfoState();
}

class _productInfoState extends State<productInfo>
    with SingleTickerProviderStateMixin {
  BuyController buy = Get.put(BuyController());
  getAllProductsController c = Get.find<getAllProductsController>();
  late final AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat(reverse: true);
  late final Animation<double> animation =
      CurvedAnimation(parent: controller, curve: Curves.easeIn);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(
          () => Text(
            "${c.productsList[i!].title}",
          ),
        )),
        body: Obx(() => Hero(
              tag: c.productsList[i!].image!,
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 500,
                          child: ListView(
                            children: [
                              Center(
                                child: Column(children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 10),
                                    child: Image.network(
                                        c.productsList[i!].image!),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    c.productsList[i!].title!,
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    c.productsList[i!].description!,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${c.productsList[i!].price!}",
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.amber),
                                  )
                                ]),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Get.defaultDialog(
                                    backgroundColor: Colors.grey[700],
                                    title: "${c.productsList[i!].title!}",
                                    titleStyle: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                    content: Column(
                                      children: [
                                        Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    buy.increase();
                                                  },
                                                  icon: const Icon(Icons.add)),
                                              GetBuilder(
                                                init: BuyController(),
                                                builder: (controller) {
                                                  return Text(
                                                    "${controller.amount}",
                                                    style: const TextStyle(
                                                        color: Colors.amber),
                                                  );
                                                },
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    buy.decrease();
                                                  },
                                                  icon:
                                                      const Icon(Icons.remove)),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: GetBuilder(
                                            init: BuyController(),
                                            builder: (controller) {
                                              return Text(
                                                "${controller.amount * c.productsList[i!].price!}",
                                                style: TextStyle(
                                                    color: Colors.amber),
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            MaterialButton(
                                              shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              color: Colors.amberAccent,
                                              onPressed: () {},
                                              child: Text(
                                                "17".tr,
                                              ),
                                            ),
                                            MaterialButton(
                                              shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              color: Colors.amberAccent,
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text(
                                                "8".tr,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ));
                              },
                              color: Colors.amberAccent,
                              child: FadeTransition(
                                opacity: animation,
                                child: Text(
                                  "17".tr,
                                ),
                              ),
                            ),
                            MaterialButton(
                                onPressed: () {},
                                color: Colors.amberAccent,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      Icons.star_border,
                                    ),
                                    FadeTransition(
                                      opacity: animation,
                                      child: Text(
                                        "18".tr,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
