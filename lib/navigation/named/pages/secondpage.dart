

import 'package:flutter/material.dart';
import 'package:practical/navigation/named/pages/thirdpage.dart';

class secondpage extends StatelessWidget {

  const secondpage({super.key});


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



              Navigator.pushNamed(context, '/third');



            }, child: Text(" Navigate to  Third")
            ),
          ],
        ),
      ),
    );
  }
}
