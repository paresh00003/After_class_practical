import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: InstransicWidth()
    );
  }
}

class InstransicWidth extends StatefulWidget {
  const InstransicWidth({super.key});

  @override
  State<InstransicWidth> createState() => _InstransicWidthState();
}

class _InstransicWidthState extends State<InstransicWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          
          
            children: [
          
          
              Container(
          
                color: Colors.red,
                height: 200,
                width: 200,
                ),
          
              SizedBox(
                height: 15,
              ),
          
          
              Container(
          
                color: Colors.red,
                height: 100,
                width: 30,
              ),
          
          
              SizedBox(
                height: 15,
              ),
          
              Container(
          
                color: Colors.red,
                height: 120,
                width: 20,
              ),
              ],
          ),
        ),
      )
    );
  }
}

