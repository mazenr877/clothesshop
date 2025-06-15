import 'package:asroshop/Localization/ar.dart';
import 'package:asroshop/Utils/Constant/ConstantColor.dart';
import 'package:asroshop/Localization/en.dart';
import 'package:asroshop/Localization/fr.dart';
import 'package:get/get.dart';

class localize extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {ene: en, fre: fr, are: ar};
}
