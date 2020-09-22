import 'package:flutter/material.dart';
import 'package:hot_brew/models/brew.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    final brews = Provider.of<List<Brew>>(context);
    // print(brews.docs);
    // for (var doc in brews.docs) {
    //   print(doc.data());
    // }

    brews.forEach((brew) {
      print(brew.name);
      print(brew.sugars);
      print(brew.strength);
    });

    return Container();
  }
}
