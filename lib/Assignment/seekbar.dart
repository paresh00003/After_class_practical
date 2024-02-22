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
  double seekbarValue = 0.5; // Initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color Changer'),
      ),
      body: Container(




        color: Color.fromARGB(
          255,
          (seekbarValue * 255).toInt(),
          0,
          0,
        ),





        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Slider(
                value: seekbarValue,
                onChanged: (value) {
                  setState(() {
                    seekbarValue = value;
                  });
                },
              ),

              Slider(
                value: seekbarValue,
                onChanged: (value) {
                  setState(() {
                    seekbarValue = value;
                  });
                },
              ),


              SizedBox(height: 20),

              Text('Seekbar Value: ${seekbarValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
