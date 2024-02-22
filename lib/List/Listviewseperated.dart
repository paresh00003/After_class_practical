import 'package:flutter/material.dart';

import 'model/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  List<Item> itemlist = [
    Item(title: "Entry A ", color: Colors.amber.shade900),
    Item(title: "Entry B ", color: Colors.amber.shade800),
    Item(title: "Entry C ", color: Colors.amber.shade700),
    Item(title: "Entry D ", color: Colors.amber.shade600),
    Item(title: "Entry E ", color: Colors.amber.shade500),
    Item(title: "Entry F ", color: Colors.amber.shade400),
    Item(title: "Entry G ", color: Colors.amber.shade300),
    Item(title: "Entry H ", color: Colors.amber.shade200),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.separated(
          itemCount: itemlist.length,
          itemBuilder: (context, index) => Container(
            height: 50,
            color: itemlist[index].color,
            child: Text(
              itemlist[index].title!,
              style: TextStyle(color: Colors.white30),
            ),
            alignment: Alignment.center,
          ),
            


          separatorBuilder: (context, index) {
            return Container(
              height: 2,
              color: Colors.white,
            );
          },
        ));
  }
}
