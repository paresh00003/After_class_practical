
import 'package:flutter/material.dart';

class thirdscreen extends StatelessWidget {


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
              
              Navigator.pop(context);


            }, child: Text("Go back"
                ""))




          ],
        ),
      ),
    );
  }
}
