// ignore_for_file: file_names, non_constant_identifier_names, depend_on_referenced_packages, prefer_const_declarations, unused_import
import 'package:asroshop/Logic/Bindings/Binding.dart';
import 'package:asroshop/Logic/Bindings/BindingApiFace.dart';
import 'package:asroshop/Logic/Bindings/BindingWithObx.dart';
import 'package:asroshop/View/Screen/Auth/LoginScreen.dart';
import 'package:asroshop/View/Screen/Auth/SignupScreen.dart';
import 'package:asroshop/View/Screen/CardItem.dart';
import 'package:asroshop/View/Screen/CategoryScreen.dart';
import 'package:asroshop/View/Screen/DetailsScreen.dart';
import 'package:asroshop/View/Screen/FavoriteScreen.dart';
import 'package:asroshop/View/Screen/HomePageScreen.dart';
import 'package:asroshop/View/Screen/MainScreen.dart';
import 'package:asroshop/View/Screen/PaymentMethod.dart';
import 'package:asroshop/View/Screen/SettingScreen.dart';
import 'package:asroshop/View/Screen/WelcomeScreen.dart';
import 'package:get/get.dart';

class Routes {
  //  init route
  static const initeWelcome = Route.WelcomeScreen;
  static const initeMain = Route.MainScreen;

  // getPage
  static final GetPages = [
    GetPage(name: Route.WelcomeScreen, page: () => const WelcomeScreen()),
    GetPage(
      name: Route.LoginScreen,
      page: () => LoginScreen(),
      binding: Binding(),
    ),
    GetPage(
      name: Route.SignupScreen,
      page: () => SignupScreen(),
      binding: Binding(),
    ),
    GetPage(
      name: Route.SettingScreen,
      page: () => const SettingScreen(),
      bindings: [Binding(), MainBind()],
    ),
    GetPage(
      name: Route.CategoryScreen,
      page: () => const CategoryScreen(),
      binding: MainBind(),
    ),
    GetPage(
      name: Route.FavoriteScreen,
      page: () => FavoriteScreen(),
      binding: BindingApi(),
    ),
    GetPage(
      name: Route.MainScreen,
      page: () => MainScreen(),
      binding: Binding(),
    ),
    GetPage(
      name: Route.HomePageScreen,
      page: () => HomePageScreen(),
      bindings: [BindingApi(), MainBind(), Binding()],
    ),
    GetPage(
      name: Route.CardItem,
      page: () => CardItem(),
      binding: BindingApi(),
    ),
    GetPage(
      name: Route.PaymentMethod,
      page: () => PaymentMehtod(),
      bindings: [BindingApi(), MainBind(), Binding()],
    ),
  ];
}

class Route {
  static const WelcomeScreen = "/WelcomeScreen";
  static const LoginScreen = "/LoginScreen";
  static const PaymentMethod = "/PaymentMethod";
  static const SignupScreen = "/SignupScreen";
  static const SettingScreen = "/SettingScreen";
  static const CategoryScreen = "/CategoryScreen";
  static const FavoriteScreen = "/FavoriteScreen";
  static const MainScreen = "/MainScreen";
  static const HomePageScreen = "/HomePageScreen";
  static const CardItem = "/CardItem";
}
