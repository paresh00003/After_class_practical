import 'package:flutter/material.dart';

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

  List<String> Userlist = [
    "Rohit",
    'Gill',
    'Virat',
    'Iyer',
    'Rahul',
    'Kishan',
    'Jadeja',
    'Kuldeep',
    'Jasprit',
    'Shami',
    'Siraj',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: Userlist.length,

        itemBuilder: (context, index) {

          String title = Userlist[index];  // here

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(title), // uper se la raha  hai  direct put title (object)
                trailing: Icon(Icons.share,color: Colors.cyan,),

                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green,
                  child: Text(title[0],style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          );

      },)
    );
  }
}

