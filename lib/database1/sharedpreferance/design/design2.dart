import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String? name = '';
  int? age = 1;
  double? salary = 1.0;


  @override
  void initState() {

    super.initState();

    ShowShaveddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Name : $name\n"
              "Age: $age ,\n"
              " Salary : $salary",
        ),
      ),
    );
  }

  Future<void> ShowShaveddata() async {

    SharedPreferences  NewObject5 = await SharedPreferences.getInstance();

    setState(() {

      name = NewObject5.getString("NAME") ?? '';
      age = NewObject5.getInt("AGE") ?? 0;
      salary = NewObject5.getDouble("SALARY") ?? 2.0;


    });



  }
}


