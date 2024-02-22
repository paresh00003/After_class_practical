import 'package:flutter/material.dart';
import 'package:practical/Materialcomponenets/audio.dart';
import 'package:practical/Materialcomponenets/gallery.dart';
import 'package:practical/Materialcomponenets/video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Drawer2(),
    );
  }
}

class Drawer2 extends StatefulWidget {
 

  @override
  State<Drawer2> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer2> {

  var _selected = 0;

  void _onItemTap(int index, BuildContext context) {
    setState(() {
      _selected = index;
      Navigator.pop(context);
    });
  }

  List<Widget> _widgetlist =[
    Gallery(),
    Audio(),
    Video(),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      drawer: Drawer(
        child: ListView(

          children: [

            DrawerHeader(

              decoration: BoxDecoration(

                color: Colors.green
              ), child: Text("Drawer Header"),
            ),


            ListTile(

              leading:Icon(Icons.perm_contact_cal),
              title: Text("Gallery"),
              selectedColor: Colors.orange,
              selected: _selected ==0,

              onTap: (){

                _onItemTap(0, context);
              },
            ),

            ListTile(

              leading:Icon(Icons.settings),
              title: Text("Audio"),
              selectedColor: Colors.red,
                selected: _selected ==1,

              onTap: (){

                _onItemTap(1, context);
              },
            ),



            ListTile(

              leading:Icon(Icons.message_sharp),
              title: Text("Video"),
              selectedColor: Colors.cyanAccent,
                selected: _selected ==2,

              onTap: (){

                _onItemTap(2, context);
              },
            ),


          ],
        ),
      ),
      body: _widgetlist[_selected],
    );
  }
}


