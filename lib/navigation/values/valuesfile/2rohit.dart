


import 'package:flutter/material.dart';
import 'package:practical/navigation/values/valuesfile/3dhoni.dart';

class rohit extends StatelessWidget {

  late String name;
  late int age;
  late double salary;

  final _statename = TextEditingController();

  rohit({required this.name,required this.age,required this.salary});




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
              controller: _statename,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'Statename'
              ),
            ),

            ElevatedButton(onPressed: (){

              String add = _statename.text.trim();



              // Navigator.push(context, MaterialPageRoute(builder: (context) => dhoni(name: name,age: age,salary: salary, statename: add,) ,),);
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
