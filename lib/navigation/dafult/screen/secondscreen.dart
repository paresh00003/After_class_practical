
import 'package:flutter/material.dart';
import 'package:practical/Navigation/dafult/screen/thirdscreen.dart';

class secondscreen extends StatelessWidget {


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
              
              Navigator.push(context, MaterialPageRoute(builder: (context) => thirdscreen() ,));
            }, child: Text("Navigate third screen"
                "")),

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
