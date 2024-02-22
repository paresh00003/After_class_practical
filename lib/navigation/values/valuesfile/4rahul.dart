


import 'package:flutter/material.dart';

class klrahul extends StatelessWidget {


  String ?name1;
  late int ?age1;
  late double ?salary1;
  late String ?statename1;

  String ? Qulification;


  klrahul({required this.name1,required this.age1,required this.salary1,required this.statename1,required this.Qulification});

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


            Text("Name : ${name1},Age : ${age1}, Salary ${salary1 },Statename${statename1}"),



            // ElevatedButton(onPressed: (){
            //
            //   Navigator.pop(context);
            //
            //
            // }, child: Text("Go back"
            //     "")),
            //
            //


          ],
        ),
      ),
    );
  }
}
