import 'package:flutter/material.dart';
import 'package:hot_brew/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKeyR = GlobalKey<FormState>();

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 2.0,
        title: Text('Sign Up to Hot Brew'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Sign In'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKeyR,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),

              // Email FormField
              TextFormField(
                validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),

              // Password FormField
              TextFormField(
                validator: (val) => val.length < 6
                    ? 'Enter the password 6+ Character long'
                    : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),

              // Sign-In Button
              RaisedButton(
                color: Colors.pink[400],
                child: Text('Register', style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  if (_formKeyR.currentState.validate()) {
                    dynamic result = await _auth.registerWIthEmailAndPassword(
                        email, password);
                    if (result == null) {
                      setState(() => error = 'please supply a valid email');
                    }
                    print('email: ' + email);
                    print('password: ' + password);
                  }
                },
              ),
              SizedBox(height: 12.0),
              // Error Text Field
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
