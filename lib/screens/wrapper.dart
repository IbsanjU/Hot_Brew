import 'package:flutter/material.dart';
import 'package:hot_brew/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        
    // return either Home or Authenticate widget
    return Authenticate();
    // return FirestoreExampleApp();
  }
}