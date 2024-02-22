import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Background(),
    );
  }
}

class Background extends StatefulWidget {

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background>
{
  List<Color> ColorsList = [Colors.red,Colors.green,Colors.yellow,Colors.blue];

  Color SelectedColor = Colors.white;

  void ChangeColor() {

    var index = Random().nextInt(ColorsList.length);

    setState(() {
      SelectedColor = ColorsList[index];
    });




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SelectedColor,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(onPressed: (){

                 ChangeColor();

            }, child: Text('Background'))

          ],
        ),
      )



    );
  }
}

