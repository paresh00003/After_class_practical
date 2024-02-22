import 'package:flutter/material.dart';
import 'package:practical/Practical_crud_static/crud_with_static_data/screens/student_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: StudentList(),
    );
  }
}
