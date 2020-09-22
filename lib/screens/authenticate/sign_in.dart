import 'package:flutter/material.dart';
import 'package:hot_brew/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 2.0,
        title: Text('Sign in to Hot Brew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),

              // Email FormField
              TextFormField(
                onChanged: (val) {},
              ),
              SizedBox(height: 20.0),

              // Email FormField
              TextFormField(
                obscureText: true,
                onChanged: (val) {},
              ),
              SizedBox(height: 20.0),

              // Sign-In Button
              RaisedButton(
                color: Colors.pink[400],
                child: Text('Sign in', style: TextStyle(color: Colors.white)),
                onPressed: () async {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
