import 'package:flutter/material.dart';
import 'homepage.dart';
void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: new homepage(),
    );
  }
}
