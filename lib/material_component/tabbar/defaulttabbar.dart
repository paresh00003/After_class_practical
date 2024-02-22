

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DefaultTabbar(),
    );
  }
}

class DefaultTabbar extends StatelessWidget {


  final List<Widget> _widgetlist = [

    Center(
      child: Icon(Icons.add),
    ),

    Center(
      child: Icon(Icons.card_travel),
    ),

    Center(
      child: Icon(Icons.home),
    ),

    Center(
      child: Icon(Icons.settings),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,

        animationDuration: Duration(
          milliseconds: 2000,
        ),

        initialIndex: 1,
        child: Scaffold(

          appBar: AppBar(
            title: Text('Tabbar Layout'),
            bottom: TabBar(

              onTap: (value) {
                print(value);
              },

              // indicator: BoxDecoration(
              //
              //   color: Colors.orange,
              //   borderRadius: BorderRadius.circular(20),
              //
              // ),
              indicatorColor: Colors.yellow,

              padding: EdgeInsets.all(10),


              tabs: [

                Icon(Icons.add),
                Icon(Icons.card_travel),
                Icon(Icons.home),
                Icon(Icons.settings),


              ],

            ),
          ),


          body: TabBarView(children: _widgetlist),
        ));
  }
}

