import 'package:flutter/material.dart';
import 'package:practical/Navigation/dafult/screen/firstscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: firstscreen(),
    );
  }
}
