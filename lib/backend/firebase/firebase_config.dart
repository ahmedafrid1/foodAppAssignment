import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDHertcDqr4dnrrfdL5-LIHUi2YzwR_FRo",
            authDomain: "mysocial-342cc.firebaseapp.com",
            projectId: "mysocial-342cc",
            storageBucket: "mysocial-342cc.appspot.com",
            messagingSenderId: "985776208683",
            appId: "1:985776208683:web:600f7924485117fee3a36e"));
  } else {
    await Firebase.initializeApp();
  }
}
