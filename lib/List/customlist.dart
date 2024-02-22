import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {


  final itemlist = List<String>.generate(50, (index) =>  'Student = ${index+1}');


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.custom(  childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          height: 50,
          color: Colors.amber.shade400,
          child: Text("${itemlist[index]}"),
        );
      },

      childCount:itemlist.length
      ),

      )
    );
  }
}

