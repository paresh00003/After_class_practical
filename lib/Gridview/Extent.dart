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
        body: GridView.extent(maxCrossAxisExtent: 100,



          padding: EdgeInsets.all(10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1/1
          ,

          children: [

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade900,
              child: Text("Tile 1 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade800,
              child: Text("Tile 2 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade700,
              child: Text("Tile 3 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade600,
              child: Text("Tile 4 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade500,
              child: Text("Tile 5 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade400,
              child: Text("Tile 6 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade300,
              child: Text("Tile 7 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),

            Container(
              alignment: Alignment.center,
              color: Colors.orange.shade200,
              child: Text("Tile 8 ",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            ),


          ],)
    );
  }
}

