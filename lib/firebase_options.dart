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
    apiKey: 'AIzaSyA6Ukct8eja0dgnsJ7HFbrTP4qT_l4M3bM',
    appId: '1:671055893379:web:56ce9ff8dbab737b7e9cb6',
    messagingSenderId: '671055893379',
    projectId: 'restutest-3c516',
    authDomain: 'restutest-3c516.firebaseapp.com',
    storageBucket: 'restutest-3c516.appspot.com',
    measurementId: 'G-XJM72QLF3E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGZQB0vufRy0BRve2KD1NCg215IeuyJXU',
    appId: '1:671055893379:android:1fa070f73a340e177e9cb6',
    messagingSenderId: '671055893379',
    projectId: 'restutest-3c516',
    storageBucket: 'restutest-3c516.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNNgatQfrfxd0uVddY8b8KAyIbU5H7hK4',
    appId: '1:671055893379:ios:1761154133abe0ad7e9cb6',
    messagingSenderId: '671055893379',
    projectId: 'restutest-3c516',
    storageBucket: 'restutest-3c516.appspot.com',
    iosBundleId: 'com.example.nganu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNNgatQfrfxd0uVddY8b8KAyIbU5H7hK4',
    appId: '1:671055893379:ios:1761154133abe0ad7e9cb6',
    messagingSenderId: '671055893379',
    projectId: 'restutest-3c516',
    storageBucket: 'restutest-3c516.appspot.com',
    iosBundleId: 'com.example.nganu',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA6Ukct8eja0dgnsJ7HFbrTP4qT_l4M3bM',
    appId: '1:671055893379:web:1b088f01d442df9a7e9cb6',
    messagingSenderId: '671055893379',
    projectId: 'restutest-3c516',
    authDomain: 'restutest-3c516.firebaseapp.com',
    storageBucket: 'restutest-3c516.appspot.com',
    measurementId: 'G-ELZBCH937W',
  );
}
