import 'package:asrooshop/Localization/localization.dart';
import 'package:asrooshop/Logic/Bindings/BindingApiFace.dart';
import 'package:asrooshop/Logic/Controller/SaveDarkMode.dart';
import 'package:asrooshop/Routes/Routes.dart';
import 'package:asrooshop/Utils/Constant/ConstantColor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'firebase_options.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirebaseAuth.instance.currentUser != null ||
              GetStorage().read<bool>("auth") == true
          ? Routes.initeMain
          : Routes.initeWelcome,
      getPages: Routes.GetPages,
      locale: Locale(GetStorage().read<String>("lange").toString()),
      translations: localize(),
      fallbackLocale: Locale(ene),
      theme: theme.light,
      darkTheme: theme.dark,
      themeMode: SaveDarkMode().Default,
      initialBinding: BindingApi(),
    );
  }
}
