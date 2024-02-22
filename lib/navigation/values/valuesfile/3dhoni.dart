


import 'package:flutter/material.dart';
import 'package:practical/navigation/values/valuesfile/4rahul.dart';

class dhoni extends StatelessWidget {


  String name;
  late int age;
  late double salary;
  late String statename;

  final qulification = TextEditingController();



  dhoni({required this.name, required this.age, required this.salary, required this.statename});
  //alter + insert short key for constructor
  // dhoni({required this.name,required this.age,required this.salary,required this.statename});


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

              controller: qulification,

              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'qulification'
              ),
            ),



            ElevatedButton(onPressed: (){


              String school = qulification.text.trim();

              Navigator.push(context, MaterialPageRoute(builder: (context) => klrahul(Qulification: school,name1: name,age1: age,salary1: salary,statename1: statename,),),);




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
