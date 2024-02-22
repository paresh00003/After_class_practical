import 'package:flutter/material.dart';
import 'package:practical/navigation/values/valuesfile/2rohit.dart';

class virat extends StatelessWidget {


  final _name1 = TextEditingController() ;
  final _age1 = TextEditingController();
  final _salary1 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body:Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: _name1,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Name'
              ),
            ),


            TextField(
              controller: _age1,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'age'
              ),
            ),



            TextField(
              controller: _salary1,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'salary'
              ),
            ),

            ElevatedButton(

                onPressed: (){



              String _newname = _name1.text.trim();

              int _newage = _age1.text.trim().isEmpty ? 0 : int.parse(_age1.text.trim());

              double _newsalary = _salary1.text.trim().isEmpty ? 0.0 : double.parse(_salary1.text.trim());

              print('''
                name : $_newname 
                age : $_newage
                salary : $_newsalary
                ''');

                 // Navigator.push(context, MaterialPageRoute(builder: (context) => rohit(name: _newname,age: _newage,salary: _newsalary, ),),);


            }, child: Text("navigate to second"))
          ],
        ),
      ),
    );
  }
}
