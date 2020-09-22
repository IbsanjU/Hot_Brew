import 'package:flutter/material.dart ';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Hot Brew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person),
              label: Text('logout')),
        ],
      ),
    );
  }
}
