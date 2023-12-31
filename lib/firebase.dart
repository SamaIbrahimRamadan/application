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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCkDzqBbB6ec0CvmlmqLmgMSnS-Cu_YyKM',
    appId: '1:701630903331:web:30a7c9270246bb64eaed96',
    messagingSenderId: '701630903331',
    projectId: 'iti1-70bf7',
    authDomain: 'iti1-70bf7.firebaseapp.com',
    storageBucket: 'iti1-70bf7.appspot.com',
    measurementId: 'G-TCD6ER32G0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD9dC4EJfnz_DDkT3S6ZGM-YOM_84iMz0k',
    appId: '1:701630903331:android:e331a762cdb80dc0eaed96',
    messagingSenderId: '701630903331',
    projectId: 'iti1-70bf7',
    storageBucket: 'iti1-70bf7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2xgOlY8Hs0OGBSbc5SlLkII335YyG0Mo',
    appId: '1:701630903331:ios:485a40654fa61606eaed96',
    messagingSenderId: '701630903331',
    projectId: 'iti1-70bf7',
    storageBucket: 'iti1-70bf7.appspot.com',
    iosClientId:
        '701630903331-h4ia8nbme6rlgq35okgidlsdbbi2e72i.apps.googleusercontent.com',
    iosBundleId: 'com.example.itiTasks',
  );
}
