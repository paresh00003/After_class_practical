import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Profit(),
    );
  }
}

class Profit extends StatefulWidget {
  const Profit({super.key});

  @override
  State<Profit> createState() => _ProfitState();
}

class _ProfitState extends State<Profit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [





          PopupMenuButton(

              onSelected: (value) {

                print(value);

                switch (value){

                  case "0":

                    break;

                  case "1":

                    break;




                }
              },


              itemBuilder: (context) {


    return [

    PopupMenuItem(
    value: 0,
    child: Text("Profile")),

    PopupMenuItem(
    value:1,
    child: Text("Logout")),
    ];


    }

          )


        ]


      ),
      body: Center(
        child: Container(
          child: Text('Menu Button',style: TextStyle(

            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}

