import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Practical(),
    );
  }
}

class Practical extends StatefulWidget {
  const Practical({super.key});

  @override
  State<Practical> createState() => _PracticalState();
}

class _PracticalState extends State<Practical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(

        child: FloatingActionButton(

          onPressed: (){},

          child: Icon(Icons.add),
        ),
      )
    );
  }
}

