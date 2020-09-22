import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart ';
import 'package:hot_brew/screens/home/brew_list.dart';
import 'package:hot_brew/services/auth.dart';
import 'package:hot_brew/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Hot Brew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout')),
          ],
        ),
        body: BrewList(),
      ),
    );
  }
}
