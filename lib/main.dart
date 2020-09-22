import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hot_brew/models/user.dart';
import 'package:hot_brew/screens/wrapper.dart';
import 'package:hot_brew/services/auth.dart';
import 'package:provider/provider.dart';

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
    //Wrap MaterialApp with Widget =ie.= Streamprovider to make Provider access everywhere
    return StreamProvider<Users>.value( // users is what we are listening to value <Users>
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
