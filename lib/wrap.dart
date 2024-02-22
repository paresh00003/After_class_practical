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
              


              width: double.infinity,
              height: double.infinity,
              color: Colors.green,


              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.spaceEvenly,

                spacing: 20,

                // crossAxisAlignment: WrapCrossAlignment.end,
                runSpacing: 20,





                children: [

                  Container(

                    height: 50,
                    width: 50,
                    color: Colors.greenAccent,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),


                  Container(
                    
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.greenAccent,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blueGrey,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),


                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blueGrey,
                  ),

                  
                ],
              ),
            ),
          )
      ),
    );
  }
}
