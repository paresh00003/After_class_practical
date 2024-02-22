import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      body: Container(

        color: Colors.grey.shade400,
        child: ListView(

          // scrollDirection: Axis.horizontal,
          itemExtent: 200,
          reverse: true,
          shrinkWrap: true, // working like container and feel space
          physics: BouncingScrollPhysics(),
          children: [


            Container(
              alignment: Alignment.center,
                height: 50,

              color: Colors.greenAccent.shade700,
              child: Text("Entry 1"),
              ),

            Container(
              height: 50,
              alignment: Alignment.center,

              color: Colors.greenAccent.shade400,

              child: Text("Entry 2"),
            ),

            Container(
              height: 50,
              alignment: Alignment.center,

              color: Colors.greenAccent.shade200,

              child: Text("Entry 3"),
            ),


            Container(
              height: 50,

              color: Colors.greenAccent.shade100,

              child: Text("Entry 4"),
            ),


            Container(
              height: 50,

              color: Colors.greenAccent.shade200,

              child: Text("Entry 5"),
            ),


            Container(
              height: 50,

              color: Colors.greenAccent.shade100,


              child: Text("Entry 6"),
            ),

            ],
        ),
      )
    );
  }
}
