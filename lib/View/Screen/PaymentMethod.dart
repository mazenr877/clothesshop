import 'package:asroshop/Logic/Controller/Controller.dart';
import 'package:asroshop/Logic/Controller/ControllerGetApi.dart';
import 'package:asroshop/Logic/Controller/ControllerWithObx.dart';
import 'package:asroshop/Utils/Constant/ConstantColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMehtod extends StatelessWidget {
  PaymentMehtod({super.key});
  final controller = Get.find<ControllerM>();
  final Controller = Get.find<ApiController>();
  final HomeController = Get.put(HomePage());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("Payment", style: TextStyle(fontSize: 12)),
            centerTitle: true,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Shipping To",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: controller.changeColor
                          ? Colors.white
                          : Colors.grey.withOpacity(0.5),
                    ),
                    padding: const EdgeInsets.only(top: 5),
                    child: BuildContainer(
                      personName: "${HomeController.DisplayName}",
                      phone: "kkk",
                      shopName: "asroshop",
                      location: "rtut fddgdfg gdgsf gfsd fgfd tyiut",
                      value: 1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: controller.changeColor
                          ? Colors.grey.withOpacity(0.5)
                          : Colors.white,
                    ),
                    padding: const EdgeInsets.only(top: 5),
                    child: BuildContainer(
                      personName: "${HomeController.DisplayName}",
                      phone: controller.phone.value,
                      shopName: "Delivery",
                      // location: "${controller.Address.value}",
                      location: "gdf",
                      value: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Payment method",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: PayPalAndCreditCard(
                      value: 1,
                      personName: 'PayPal',
                      imge: "images/paypal.png",
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: PayPalAndCreditCard(
                      personName: 'Google',
                      value: 2,
                      imge: "images/google.png",
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: PayPalAndCreditCard(
                      value: 3,
                      personName: 'Credit Card',
                      imge: "images/credit.png",
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
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
                              "\$ ${Controller.Total}",
                              style: const TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: ElevatedButton(
                            onLongPress: () {
                              Get.to(() => PaymentMehtod());
                            },
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.green,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Payment",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BuildContainer({
    required String shopName,
    required String personName,
    required String phone,
    required String location,
    required int value,
  }) {
    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Radio(
            activeColor: Get.isDarkMode ? Colors.pink : Colors.green,
            fillColor: WidgetStateColor.resolveWith(
              (states) => Get.isDarkMode ? Colors.pink : Colors.green,
            ),
            value: value,
            groupValue: controller.val.value,
            onChanged: (value) {
              controller.val.value = value!;
              controller.ChangeColor();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopName,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
                Text(
                  personName,
                  style: const TextStyle(fontSize: 9, color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      phone,
                      style: const TextStyle(fontSize: 9, color: Colors.black),
                    ),
                    const SizedBox(width: 130),
                    InkWell(
                      onTap: () {
                        // controller.GetLocation();
                        Get.defaultDialog(
                          backgroundColor: Colors.green,
                          title: "Phone",
                          titlePadding: const EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                          ),
                          titleStyle: const TextStyle(fontSize: 12),
                          content: Column(
                            children: [
                              TextFormField(
                                controller: controller.cont,
                                obscureText: false,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(0),
                                  prefixIcon: const Icon(Icons.phone),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      controller.cont.clear();
                                    },
                                    child: const Icon(Icons.close),
                                  ),
                                  fillColor: Colors.grey.shade300,
                                  labelText: "Search about phone",
                                  filled: true,
                                  labelStyle: const TextStyle(fontSize: 9),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.off(() => PaymentMehtod());
                                    },
                                    child: const Text("No"),
                                  ),
                                  const SizedBox(width: 30),
                                  InkWell(
                                    onTap: () {
                                      controller.phone.value =
                                          controller.cont.text;
                                      Get.back();
                                    },
                                    child: const Text("Yes"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      child: Icon(
                        Icons.phone,
                        size: 17,
                        color: Get.isDarkMode ? pink : Colors.green,
                      ),
                    ),
                  ],
                ),
                Text(
                  location,
                  style: const TextStyle(fontSize: 9, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget PayPalAndCreditCard({
    required String personName,
    required String imge,
    required int value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Image.asset(imge, scale: 1),
              const SizedBox(width: 7),
              Text(
                personName,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Radio(
          activeColor: Get.isDarkMode ? Colors.pink : Colors.green,
          fillColor: WidgetStateColor.resolveWith(
            (states) => Get.isDarkMode ? Colors.pink : Colors.green,
          ),
          value: value,
          groupValue: controller.value.value,
          onChanged: (value) {
            controller.value.value = value as int;
          },
        ),
      ],
    );
  }
}
