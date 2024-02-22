import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:  Dailog1(),
    );
  }
}

class Dailog1 extends StatefulWidget {
  const Dailog1({super.key});

  @override
  State<Dailog1> createState() => _Dailog1State();
}

class _Dailog1State extends State<Dailog1> {



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: FilledButton.tonal(

            onPressed: () async {

             var result = await showALirtdialog();

             switch(result){

               case 'delete':

                 print("delete item clicked");

                 break;

               case 'cancel':

                 print('cancel item clicked');

                 break;
             }

            },

            child: Text('Alirt Dailog')),

      )

    );
  }

  Future<String ? > showALirtdialog() async {


    return await showDialog(context: context, builder: (context) {

      return AlertDialog(

        title: Text ('Delete'),

        content: Text('Are you sure you want to delete this item'),


        actions: [

          ElevatedButton(onPressed: (){

            Navigator.pop(context,'delete');

          }, child: Text("Delete")),

          ElevatedButton(onPressed: (){

            Navigator.pop(context,'cancel');


          }, child: Text("Cancel")),
        ],

      );
    },);

  }
}

