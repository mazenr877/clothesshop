// ignore_for_file: deprecated_member_use, must_be_immutable
import 'package:asroshop/Logic/Controller/ControllerGetApi.dart';
import 'package:asroshop/View/Screen/MainScreen.dart';
import 'package:asroshop/View/Screen/PaymentMethod.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardItem extends StatelessWidget {
  CardItem({super.key});
  final controller = Get.find<ApiController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Get.isDarkMode ? Colors.black : Colors.green,
          title: Text(
            "Cart Items",
            style: TextStyle(
              fontSize: 12,
              color: Get.isDarkMode ? Colors.black : Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                controller.ClearAllProductFromCard();
              },
              icon: const Icon(Icons.backspace, color: Colors.white, size: 19),
            ),
          ],
        ),
        body: Obx(() {
          if (controller.ProductMap.isEmpty) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.shopping_cart, size: 170),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Your Cart Is ",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Empty",
                        style: TextStyle(
                          color: Get.isDarkMode ? Colors.pink : Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Add Items To Get Started",
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Get.isDarkMode
                          ? Colors.pink
                          : Colors.green,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      Get.off(MainScreen());
                    },
                    child: Text(
                      "Go To Home",
                      style: TextStyle(
                        fontSize: 12,
                        color: Get.isDarkMode ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                Container(
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: controller.ProductMap.length,
                      itemBuilder: (context, index) => SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Card(
                            color: Colors.purple[100],
                            elevation: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 9),
                                      Image.network(
                                        "${controller.ProductMap.keys.toList()[index].image}",
                                        fit: BoxFit.contain,
                                        // "https://cutee.net/wp-content/uploads/2020/10/3004.jpg",
                                        width: 50,
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        children: [
                                          const Text(
                                            "dfkgdf",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "\$ ${controller.SupTotal[index].toStringAsFixed(2)}",

                                            // "ss",
                                            style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            controller.AddProductFromCard(
                                              controller.ProductMap.keys
                                                  .toList()[index],
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.add_circle,
                                            size: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "${controller.ProductMap.values.toList()[index]}",
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            controller.RemoveProductsFromCard(
                                              controller.ProductMap.keys
                                                  .toList()[index],
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.remove_circle,
                                            size: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.RemoveOneProductFromCard(
                                          controller.ProductMap.keys
                                              .toList()[index],
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        size: 16,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "\$ ${controller.Total}",
                            style: const TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onLongPress: () {
                            Get.to(() => PaymentMehtod());
                          },
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "CheckBox",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
