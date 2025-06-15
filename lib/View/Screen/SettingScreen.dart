// ignore_for_file: deprecated_member_use
import 'package:asroshop/View/Widget/Settings/changeLanguage.dart';
import 'package:asroshop/View/Widget/Settings/logOut.dart';
import 'package:asroshop/View/Widget/Settings/profileImage.dart';
import 'package:asroshop/View/Widget/Settings/saveDarkAndLight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: ListView(
            children: [
              ProfileImage(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: const Divider(),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "GENERAL".tr,
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.pink : Colors.green,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SaveDark(),
              const SizedBox(height: 20),
              ChangeLanguage(),
              const SizedBox(height: 30),
              LogOut(),
            ],
          ),
        ),
      ),
    );
  }
}
