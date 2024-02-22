import 'package:flutter/material.dart';

class Video extends StatefulWidget {


  @override
  State<Video> createState() => _AudioState();
}

class _AudioState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Text("Video"),
      ),
    );
  }
}