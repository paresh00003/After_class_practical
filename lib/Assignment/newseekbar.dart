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
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Color.fromRGBO(
              redValue.round(),
              greenValue.round(),
              blueValue.round(),
               1.0,
             ),
            child: Center(
              child: Text(
                'Red: ${redValue.round()}, Green: ${greenValue.round()}, Blue: ${blueValue.round()}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
          Slider(
            value: redValue,
            onChanged: (value) {
              setState(() {
                redValue = value;
              });
            },
            min: 0,
            max: 255,
            divisions: 255,
            label: redValue.round().toString(),
          ),
          Slider(
            value: greenValue,
            onChanged: (value) {
              setState(() {
                greenValue = value;
              });
            },
            min: 0,
            max: 255,
            divisions: 255,
            label: greenValue.round().toString(),
          ),
          Slider(
            value: blueValue,
            onChanged: (value) {
              setState(() {
                blueValue = value;
              });
            },
            min: 0,
            max: 255,
            divisions: 255,
            label: blueValue.round().toString(),
          ),
        ],
      ),
    );
  }
}
