import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jillurrhman/customscrol.dart';
import 'package:jillurrhman/homepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCFG0wPcVADeC2kPzgHGUQvEeWqBfybrDg",
          authDomain: "jillurweb.firebaseapp.com",
          projectId: "jillurweb",
          storageBucket: "jillurweb.appspot.com",
          messagingSenderId: "274387294465",
          appId: "1:274387294465:web:874d4c78488b673280e300",
          measurementId: "G-Q0WF6TR6CY"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      scrollBehavior: MyCustomScrollBehavior(),
      home:HomePage(),
    );
  }
}
