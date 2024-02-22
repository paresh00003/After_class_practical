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
        child: Text("Floating Action Button"),

      ),

//floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,  //  multiple type of location change button
        floatingActionButton: FloatingActionButton  //  . dot many type small/large/extended try this for siz chanage
          (
          child: Icon(   //child ni jagiya ye label add karvu exteded ma
            Icons.add,// here also colors change

          ),
          onPressed: (){

          },

          focusColor: Colors.green, //effect

          foregroundColor: Colors.orange, // you also change color from icons

          backgroundColor: Colors.black,

          // mini: true,  default size change


          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(width: 2,color: Colors.red) // for side line border
          ),


          elevation: 100,  // some animation

          highlightElevation: 100,  // side wise shadow effect




    ),
    );
  }
}

