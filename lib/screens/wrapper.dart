import 'package:flutter/material.dart';
import 'package:hot_brew/models/user.dart';
import 'package:hot_brew/screens/authenticate/authenticate.dart';
import 'package:hot_brew/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Listen / Access Stream Provider for AuthChange User
    final user = Provider.of<Users>(context);
    print(user);

    // return either Home or Authenticate widget
    if (user == null)
      return Authenticate();
    else
      return Home();
    // return FirestoreExampleApp();
  }
}
