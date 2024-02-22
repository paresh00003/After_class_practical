
import 'package:flutter/material.dart';
import 'package:practical/Navigation/dafult/screen/secondscreen.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

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

            ElevatedButton(onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder:  (context) =>  secondscreen(),));

            }, child: Text("navigate to second"))
          ],
        ),
      ),
    );
  }
}
