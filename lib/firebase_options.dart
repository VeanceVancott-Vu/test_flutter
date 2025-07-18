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
    apiKey: 'AIzaSyDP_F00yWE_NiWCVoeOTgdss4N_eBX4wNA',
    appId: '1:321353445502:web:dede39616f497e5991682f',
    messagingSenderId: '321353445502',
    projectId: 'abcd-2c24c',
    authDomain: 'abcd-2c24c.firebaseapp.com',
    storageBucket: 'abcd-2c24c.firebasestorage.app',
    measurementId: 'G-D1DT7QFKNG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsk6ymGNWNJX1yUR7QkSI5wYr9jcVWiEs',
    appId: '1:321353445502:android:51fae308f058153091682f',
    messagingSenderId: '321353445502',
    projectId: 'abcd-2c24c',
    storageBucket: 'abcd-2c24c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxk2zZ91ii_w9vUZcFpdapftiMg8NGqxo',
    appId: '1:321353445502:ios:88a657367dc144fb91682f',
    messagingSenderId: '321353445502',
    projectId: 'abcd-2c24c',
    storageBucket: 'abcd-2c24c.firebasestorage.app',
    iosBundleId: 'com.example.testFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxk2zZ91ii_w9vUZcFpdapftiMg8NGqxo',
    appId: '1:321353445502:ios:88a657367dc144fb91682f',
    messagingSenderId: '321353445502',
    projectId: 'abcd-2c24c',
    storageBucket: 'abcd-2c24c.firebasestorage.app',
    iosBundleId: 'com.example.testFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDP_F00yWE_NiWCVoeOTgdss4N_eBX4wNA',
    appId: '1:321353445502:web:5af6fbc7061d782991682f',
    messagingSenderId: '321353445502',
    projectId: 'abcd-2c24c',
    authDomain: 'abcd-2c24c.firebaseapp.com',
    storageBucket: 'abcd-2c24c.firebasestorage.app',
    measurementId: 'G-K6F4H77S3E',
  );

}