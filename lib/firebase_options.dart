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
    apiKey: 'AIzaSyBL_K730pOxt9UbPMAA4q3gLXgTaEbSOq8',
    appId: '1:779929307604:web:d77d3c4764bf910389ee41',
    messagingSenderId: '779929307604',
    projectId: 'coiffinder-ec2a0',
    authDomain: 'coiffinder-ec2a0.firebaseapp.com',
    storageBucket: 'coiffinder-ec2a0.appspot.com',
    measurementId: 'G-RD23FLQ5PZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDP3_hV-Sn0P0oLj-otDX7sSy2S90HFtxU',
    appId: '1:779929307604:android:1e332159d5025d3389ee41',
    messagingSenderId: '779929307604',
    projectId: 'coiffinder-ec2a0',
    storageBucket: 'coiffinder-ec2a0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6Z-ah9pD2ibXDNWYS_SlqKWMPU8RG43E',
    appId: '1:779929307604:ios:17b1a3b6e9da7be389ee41',
    messagingSenderId: '779929307604',
    projectId: 'coiffinder-ec2a0',
    storageBucket: 'coiffinder-ec2a0.appspot.com',
    iosBundleId: 'com.example.coiffinder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6Z-ah9pD2ibXDNWYS_SlqKWMPU8RG43E',
    appId: '1:779929307604:ios:42d955c1935651a289ee41',
    messagingSenderId: '779929307604',
    projectId: 'coiffinder-ec2a0',
    storageBucket: 'coiffinder-ec2a0.appspot.com',
    iosBundleId: 'com.example.coiffinder.RunnerTests',
  );
}
