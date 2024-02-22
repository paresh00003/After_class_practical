

import 'package:flutter/material.dart';
import 'package:practical/navigation/named/pages/secondpage.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

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

            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(

                hintText: " Name"
              ),
            ),


            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(

                  hintText: " Name"
              ),
            ),

            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(

                  hintText: " Name"
              ),
            ),


            SizedBox(height: 20,),


            ElevatedButton(onPressed: (){

              Navigator.pushNamed(context, '/second');



            }, child: Text(" Navigate to second"),

            ),
          ],
        ),
      ),
    );
  }
}
