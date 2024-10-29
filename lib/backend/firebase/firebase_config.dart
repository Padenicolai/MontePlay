import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyADugMO31QQLolcAv7c2vKGhn6cNUVRWMQ",
            authDomain: "montesantoplay-pro-ilbxtc.firebaseapp.com",
            projectId: "montesantoplay-pro-ilbxtc",
            storageBucket: "montesantoplay-pro-ilbxtc.appspot.com",
            messagingSenderId: "550849047191",
            appId: "1:550849047191:web:66c14d8fc9140a51ce17d2"));
  } else {
    await Firebase.initializeApp();
  }
}
