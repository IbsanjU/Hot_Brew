import 'package:flutter/material.dart';
import 'package:hot_brew/screens/home/home.dart';
import 'package:hot_brew/screens/test.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // return either Home or Authenticate widget
    return Home();
    // return FirestoreExampleApp();
  }
}