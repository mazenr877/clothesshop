// ignore_for_file: must_be_immutable

import 'package:asroshop/Logic/Controller/ControllerWithObx.dart';
import 'package:asroshop/View/Widget/CategoryItemFromScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  final controller = Get.find<ControllerM>();

  CategoryItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.Loading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      return Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              // controller.GetInsidCategory(controller.CategoryNameList[index]);
              controller.GetInsideCategoryIndex(index);
              Get.to(
                () => CategoryItemFromScreen(
                  TitlNameCategory: controller.CategoryNameList[index],
                ),
              );
            },
            child: Container(
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(controller.Image[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  controller.CategoryNameList[index],
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
          itemCount: controller.CategoryNameList.length,
          separatorBuilder: (context, int index) {
            return const SizedBox(height: 3);
          },
        ),
      );
    });
  }
}
