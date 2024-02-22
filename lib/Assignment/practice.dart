import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color _selectedColor = Colors.black; // Initial color

  void ValueChange(color) {

    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          RadioListTile(
            title: Text('Red'),
            value: Colors.red,
            groupValue: _selectedColor,
            onChanged: (value) {
              ValueChange(value);
            },
          ),


          RadioListTile(
            title: Text('Green'),
            value: Colors.green,
            groupValue: _selectedColor,
            onChanged: (value) {

              ValueChange(value);
            },
          ),


          RadioListTile(
            title: Text('Blue'),
            value: Colors.blue,
            groupValue: _selectedColor,
            onChanged: (value) {

              ValueChange(value);
            },
          ),
          // Add more RadioListTile widgets for additional colors as needed

          SizedBox(height: 20),


          Container(
            width: 100,
            height: 100,
            color: _selectedColor,
          ),
        ],
      ),
    );
  }
}
