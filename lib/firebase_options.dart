// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCaEgbr8SSJ_UlMWesKDTAIR1ka1TVHAGY',
    appId: '1:764115664453:web:d23df2a1288d75fbcf6d2c',
    messagingSenderId: '764115664453',
    projectId: 'asroshop-c0a20',
    authDomain: 'asroshop-c0a20.firebaseapp.com',
    storageBucket: 'asroshop-c0a20.firebasestorage.app',
    measurementId: 'G-LJDHZJH3Z4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDA6Dx7sT-xEi1PSxzYbnw4VIcI0Ng9LJk',
    appId: '1:764115664453:android:ea4643e862b2b1a2cf6d2c',
    messagingSenderId: '764115664453',
    projectId: 'asroshop-c0a20',
    storageBucket: 'asroshop-c0a20.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvOeqlBssyUFEZh_rH2olpg4xsAzN3bMk',
    appId: '1:764115664453:ios:ca72de20623f92f1cf6d2c',
    messagingSenderId: '764115664453',
    projectId: 'asroshop-c0a20',
    storageBucket: 'asroshop-c0a20.firebasestorage.app',
    iosClientId: '764115664453-2cheq50rullpvkcclfidp15b01e00gvu.apps.googleusercontent.com',
    iosBundleId: 'com.example.asroshop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvOeqlBssyUFEZh_rH2olpg4xsAzN3bMk',
    appId: '1:764115664453:ios:ca72de20623f92f1cf6d2c',
    messagingSenderId: '764115664453',
    projectId: 'asroshop-c0a20',
    storageBucket: 'asroshop-c0a20.firebasestorage.app',
    iosClientId: '764115664453-2cheq50rullpvkcclfidp15b01e00gvu.apps.googleusercontent.com',
    iosBundleId: 'com.example.asroshop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAx2Po8UWcvvIFDAs5rD8MFPb77eeQhtus',
    appId: '1:764115664453:web:e5146bfe6904e05acf6d2c',
    messagingSenderId: '764115664453',
    projectId: 'asroshop-c0a20',
    authDomain: 'asroshop-c0a20.firebaseapp.com',
    storageBucket: 'asroshop-c0a20.firebasestorage.app',
    measurementId: 'G-3XMZ0XS8M0',
  );
}
