import 'package:flutter/material.dart ';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(height: 100.0, color: Colors.yellow[300]);

  Widget get videoDescription =>
      Expanded(child: Container(color: Colors.green[300]));

  Widget get actionToolbar => Container(width: 100.0, color: Colors.red[300]);

  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[videoDescription, actionToolbar]));

  Widget get bottomSection => Container(height: 80.0, color: Colors.blue[300]);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('home'),
    // );

    return Scaffold(
      body: Column(
        children: <Widget>[
          //Top Section   // Container(height: 100.0, color: Colors.yellow[300]),
          // [OR]
          topSection,

          //Middle Section
          middleSection,

          //Bottom Section
          bottomSection
        ],
      ),
    );
  }
}
