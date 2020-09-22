import 'package:flutter/material.dart';
import 'package:hot_brew/models/user.dart';
import 'package:hot_brew/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<Users>(context);
    print(user);
        
    // return either Home or Authenticate widget
    return Authenticate();
    // return FirestoreExampleApp();
  }
}