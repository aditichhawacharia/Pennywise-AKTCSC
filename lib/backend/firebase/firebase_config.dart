import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBq8iDgC1Ip7dcYdmJSylchfmkxWnSBK3k",
            authDomain: "a-k-t-c-s-c-hackathon-s-30pzj9.firebaseapp.com",
            projectId: "a-k-t-c-s-c-hackathon-s-30pzj9",
            storageBucket: "a-k-t-c-s-c-hackathon-s-30pzj9.appspot.com",
            messagingSenderId: "851967546693",
            appId: "1:851967546693:web:45d36afee8ae0b7a549a2c"));
  } else {
    await Firebase.initializeApp();
  }
}
