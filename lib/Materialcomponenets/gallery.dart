
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _AudioState();
}

class _AudioState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Text("Gallery"),
      ),
    );
  }
}