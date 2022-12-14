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
    apiKey: 'AIzaSyDubWpo2nmwSYJDObGZweIdDpYC_G8ZdkY',
    appId: '1:520169330800:web:3f0104560e4c81a50cfcb5',
    messagingSenderId: '520169330800',
    projectId: 'firbase-434e1',
    authDomain: 'firbase-434e1.firebaseapp.com',
    storageBucket: 'firbase-434e1.appspot.com',
    measurementId: 'G-6N6P7QS91F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDf8IRBRWNwk93d0I9FUwZJfN3GgHM0BeU',
    appId: '1:520169330800:android:0b6d2f3d7c2b34800cfcb5',
    messagingSenderId: '520169330800',
    projectId: 'firbase-434e1',
    storageBucket: 'firbase-434e1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXv4Ioj4iiqlHE8AhVHpqNZSndaXMn1qw',
    appId: '1:520169330800:ios:fa59fa4de9e6212f0cfcb5',
    messagingSenderId: '520169330800',
    projectId: 'firbase-434e1',
    storageBucket: 'firbase-434e1.appspot.com',
    iosClientId: '520169330800-itc1pokmivj3btuavu4gngatlminp18h.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXv4Ioj4iiqlHE8AhVHpqNZSndaXMn1qw',
    appId: '1:520169330800:ios:fa59fa4de9e6212f0cfcb5',
    messagingSenderId: '520169330800',
    projectId: 'firbase-434e1',
    storageBucket: 'firbase-434e1.appspot.com',
    iosClientId: '520169330800-itc1pokmivj3btuavu4gngatlminp18h.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );
}
