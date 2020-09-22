import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hot_brew/screens/wrapper.dart';

void main() async {
  // these 2 lines to InitializeApp with Firebase-core
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}
