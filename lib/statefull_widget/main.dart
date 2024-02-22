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


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextStyle newtextstyle = const TextStyle(fontSize: 22);

  int Counter = 0;


  void increment(){

setState(() {
  Counter++;
  print("$Counter");
});

  }

  void decrement(){

    setState(() {
      Counter--;
      print("$Counter");
    });

  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            ElevatedButton(onPressed: (){

              decrement();
            },

                child: Text("-",style: newtextstyle,)),

            Text("$Counter",style:newtextstyle ,),

            ElevatedButton(onPressed: (){
              increment();

            },
                child: Text("+",style: newtextstyle,)),
          ],
        ),
      ),
    );
  }
}



