// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:asroshop/Logic/Controller/Controller.dart';
import 'package:get/get.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePage());
  }
}
