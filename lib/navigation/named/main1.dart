import 'package:flutter/material.dart';
import 'package:practical/navigation/named/pages/firstpage.dart';
import 'package:practical/navigation/named/pages/secondpage.dart';
import 'package:practical/navigation/named/pages/thirdpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',


      initialRoute: '/',

      routes: {

        '/' : (context) => firstpage(),
        'second': (context) => secondpage(),
        ''
            '' : (context) => thirdpage(),
      }

    );
  }
}
