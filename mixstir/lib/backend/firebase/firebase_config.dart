import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAvE-3_BdDg8QaNa0vovYaqE6n1E4OSA-I",
            authDomain: "mixstir-e568c.firebaseapp.com",
            projectId: "mixstir-e568c",
            storageBucket: "mixstir-e568c.appspot.com",
            messagingSenderId: "959259297353",
            appId: "1:959259297353:web:c20fc209133db28a156198",
            measurementId: "G-LPEE6TMS0W"));
  } else {
    await Firebase.initializeApp();
  }
}
