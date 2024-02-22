import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView(

        children:
        [

          Card(
            child: ListTile(



            leading:Text("oh"),

            title: Text("Person 1"),
            subtitle: Text("child 1"),
            trailing: FaIcon(FontAwesomeIcons.googlePay),

        ),
          ),


          Card(
            child: ListTile(

              leading:Text('ok'),

              title: Text("Person 1"),
              subtitle: Text("child 1"),
              trailing: FaIcon(FontAwesomeIcons.googlePay),

            ),
          ),

    ]
      )




    );
  }
}