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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtJ0yzynG3NcvKY23aQx_u0dSzameKEG4',
    appId: '1:674812189821:android:120e660c72cd45664c2514',
    messagingSenderId: '674812189821',
    projectId: 'refridge-5c43a',
    storageBucket: 'refridge-5c43a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGX_KuDeGs9UrC_m6OGP4I7tJaUV5nawE',
    appId: '1:674812189821:ios:6c3fcd92ca3e0c724c2514',
    messagingSenderId: '674812189821',
    projectId: 'refridge-5c43a',
    storageBucket: 'refridge-5c43a.appspot.com',
    androidClientId: '674812189821-7psci58fm86dto5qt0m8i63l175rbgpi.apps.googleusercontent.com',
    iosClientId: '674812189821-l9juhof84knghri2g7cb8etkhr1s1umq.apps.googleusercontent.com',
    iosBundleId: 'com.refridge.refridge',
  );

}