import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body:
          Center(
            child: Container(

              height: 400,
              width: 400,
              child: Stack(



                alignment: Alignment.center,
                // fit: StackFit.loose,
                // clipBehavior: Clip.none,
                children: [

                  Container(


                    height: 300,
                    width: 300,
                    color: Colors.yellow,

                  ),

                  Container(

                    height: 250,
                    width: 250,
                    color: Colors.green,

                  ),

                  Positioned(
                    top: -25,
                    left: -25,
                    child: Container(

                      height: 200,
                      width: 200,
                      color: Colors.red,

                    ),
                  ),

                  Positioned(

                    bottom: -25,
                    right: -25,
                    child: Container(

                      height: 150,
                      width: 150,
                      color: Colors.cyanAccent,

                    ),
                  ),


                ],
              ),
            ),
          )
      ),
    );
  }
}
