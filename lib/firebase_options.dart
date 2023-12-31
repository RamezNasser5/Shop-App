// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDvUtXVtJ39Mm5jtpuyJrA-K19uK6eUT3w',
    appId: '1:886531963136:web:2ba07daa149a7c553c5be5',
    messagingSenderId: '886531963136',
    projectId: 'coffee-shop-8bcbd',
    authDomain: 'coffee-shop-8bcbd.firebaseapp.com',
    storageBucket: 'coffee-shop-8bcbd.appspot.com',
    measurementId: 'G-7ZHSLS0456',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC03XGcKJkeUMaHGa765kuk7kjIPjYqz_I',
    appId: '1:886531963136:android:808576b7cb8f2d523c5be5',
    messagingSenderId: '886531963136',
    projectId: 'coffee-shop-8bcbd',
    storageBucket: 'coffee-shop-8bcbd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGjIIHuqjtt6_5w1UcH37EXjl_MG8svcM',
    appId: '1:886531963136:ios:70edf1075ae7623c3c5be5',
    messagingSenderId: '886531963136',
    projectId: 'coffee-shop-8bcbd',
    storageBucket: 'coffee-shop-8bcbd.appspot.com',
    iosBundleId: 'com.example.coffeeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGjIIHuqjtt6_5w1UcH37EXjl_MG8svcM',
    appId: '1:886531963136:ios:91cd54abd0491a2d3c5be5',
    messagingSenderId: '886531963136',
    projectId: 'coffee-shop-8bcbd',
    storageBucket: 'coffee-shop-8bcbd.appspot.com',
    iosBundleId: 'com.example.coffeeApp.RunnerTests',
  );
}
