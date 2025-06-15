import 'package:asroshop/Logic/Controller/ControllerWithObx.dart';
import 'package:asroshop/Utils/Constant/ConstantColor.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatelessWidget {
  ChangeLanguage({super.key});
  final controller = Get.find<ControllerM>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GetBuilder<ControllerM>(
        init: ControllerM(),
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.language,
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      size: 21,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Language".tr,
                    style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 115,
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 25,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: [
                    DropdownMenuItem(
                      value: ene,
                      child: Text(
                        Engilsh,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    DropdownMenuItem(
                      value: fre,
                      child: Text(France, style: const TextStyle(fontSize: 12)),
                    ),
                    DropdownMenuItem(
                      value: are,
                      child: Text(Arabic, style: const TextStyle(fontSize: 12)),
                    ),
                  ],
                  // value: ,
                  onChanged: (value) {
                    // controller.ChangeLanguage(value!);
                    // Get.updateLocale(Locale(value));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
