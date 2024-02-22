import 'package:flutter/material.dart';
import 'package:practical/database1/sharedpreferance/design/design2.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Design1(),
    );
  }
}

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(

            controller: _nameController,

            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Enter Name'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(

            controller: _ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Enter Age'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(

            controller: _salaryController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Enter Salary'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {

              String name = _nameController.text.trim();
              int age = int.parse(_ageController.text.trim());
              double  salary =  double.parse(_salaryController.text.trim());

              ShavedData(name,age,salary);


            },
            child: Text('Save'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => Second(),));


            },
            child: Text('Show Data'),
          )
        ],
      )),
    );
  }

   ShavedData(String name, int age, double salary) async {

   try{

     final SharedPreferences Object = await SharedPreferences.getInstance();

     await Object.setString("NAME", name);
     await Object.setInt("AGE", age);
     await Object.setDouble("SALARY", salary);

     print("data savaed");

   }
   catch(e){

     print(e.toString());
   }

  }
}
