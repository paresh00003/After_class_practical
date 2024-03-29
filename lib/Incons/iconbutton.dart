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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.add_call,),
          onPressed: (){},
          hoverColor: Colors.yellow,
          splashColor: Colors.red,

          highlightColor: Colors.greenAccent,
          splashRadius: 150,


        )
      )
    );
  }
}

