import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ok()
    );
  }
}
class ok extends StatelessWidget {
  const ok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              children: [


                Expanded(
                  flex: 10,
                  child: Container(
                    width: 100,

                    height: 50,
                    color: Colors.green,
                  ),
                ),


                Expanded(
                  child: Container(
                    width: 100,

                    height: 50,
                    color: Colors.red,
                  ),
                ),


                Expanded(
                  child: Container(
                    width: 100,

                    height: 50,
                    color: Colors.blue,
                  ),
                ),


              ],
            ),

            SizedBox(height: 30,),


            Row(
              children:[

                Container(
                  height: 50,
                  width: 70,
                  color: Colors.cyanAccent,
                ),


                Expanded(
                  child: Container(
                    height: 50,
                    width: 70,
                    color: Colors.greenAccent,
                  ),
                ),


                Expanded(
                  child: Container(
                    height: 50,
                    width: 70,
                    color: Colors.yellow,
                    child: Text("ok",style: TextStyle(
                      fontFamily: ("assets/fonts/BebasNeue Regular.otf"),
                    ),),
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );

  }
}

