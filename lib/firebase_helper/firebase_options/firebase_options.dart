import 'dart:io';
import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig{
  static FirebaseOptions get platformOptions{
    if(Platform.isIOS){
      //iOS 
      return const FirebaseOptions(
        apiKey:'AIzaSyD-3e0KOmkGxej9fngTz3paR9OUGouERLw',
        appId: '1:1093994406578:android:8bf0cc106f0eafb87c5fab',
        messagingSenderId: '1093994406578',
        projectId: 'cumpleanos-consultas',
        iosBundleId: 'com.cumple.consultas'
         );
    } else {
      //android
      return const FirebaseOptions(
        apiKey:'AIzaSyAB7Q1aGWtvJbvifJJtWTCuB_6WVlvdxQ4',
        appId: '1:1093994406578:android:8bf0cc106f0eafb87c5fab',
        messagingSenderId: '1093994406578',
        projectId: 'cumpleanos-consultas'
         );
    }
  }
}
