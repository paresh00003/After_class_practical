import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:  Dailog2(),
    );
  }
}

class Dailog2 extends StatefulWidget {
  const Dailog2({super.key});

  @override
  State<Dailog2> createState() => _DailogState();
}

class _DailogState extends State<Dailog2> {






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: FilledButton.tonal(

              onPressed: () async {

                var result = await simpledailog(context);

                print("Seleceted : $result");

                },

              child: Text('Simple Dailog')),

        )

    );
  }

  Future<String ?> simpledailog(BuildContext context) async {

  return await showDialog(context: context,
    barrierDismissible: false,
    builder: (context)
  {



    return SimpleDialog(



      title: Text('Select Language'),
      children: [

        SimpleDialogOption(

            onPressed: (){

              Navigator.pop(context,'dart');
            },
          child: Text("Dart"),

        ),

        SimpleDialogOption(

          onPressed: (){

            Navigator.pop(context,'paython');
          },
          child: Text("Paython"),

        ),

        SimpleDialogOption(

          onPressed: (){
            Navigator.pop(context,'java');
          },
          child: Text("java"),

        ),

        SimpleDialogOption(

          onPressed: (){
            Navigator.pop(context,'kotlin');
          },
          child: Text("kotlin"),

        ),



      ],

    );
  },);

  }


}

