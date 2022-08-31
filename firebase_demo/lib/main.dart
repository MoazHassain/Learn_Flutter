import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/screen/splash-screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDtsNXFDqmevGCgKKSxAPQjdOMrCkyX3sw", // Your apiKey
      appId: "com.example.firebase_demo", // Your appId
      messagingSenderId: "22213327652", // Your messagingSenderId
      projectId: "fir-test-5afc5", // Your projectId
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
