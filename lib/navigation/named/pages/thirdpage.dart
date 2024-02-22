

import 'package:flutter/material.dart';

class thirdpage extends StatelessWidget {

  const thirdpage({super.key});
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
              decoration: InputDecoration(

                  hintText: " Name"
              ),
            ),


            SizedBox(height: 20,),



            ElevatedButton(onPressed: (){

              Navigator.pop(context);



            }, child: Text(" back button ")),
          ],
        ),
      ),
    );
  }
}
