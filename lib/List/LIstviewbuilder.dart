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

  List<String> titlelist =[
    'Entry A',
    'Entry B',
    'Entry C',
    'Entry D',
    'Entry E',
    'Entry F',
    'Entry G',
    'Entry H',
  ];

  List<Color> colorlist = [
    Colors.green.shade900,
    Colors.green.shade800,
    Colors.green.shade700,
    Colors.green.shade600,
    Colors.green.shade500,
    Colors.green.shade400,
    Colors.green.shade300,
    Colors.green.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(

        itemCount: titlelist.length,

        itemBuilder: (context, index) {



        String title = titlelist [index];
        Color color = colorlist [index];

        return Container(
          alignment: Alignment.center,

          color: Colors.green.shade200,
          height: 50,
          child: Text(title,style: TextStyle(
            color: Colors.cyan,
          ),),
        );

      },
      )
    );
  }
}

