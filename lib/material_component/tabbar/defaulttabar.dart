import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DefaultTababr(),
    );
  }
}

class DefaultTababr extends StatefulWidget {
  const DefaultTababr({super.key});

  @override
  State<DefaultTababr> createState() => _DefaultTababrState();
}

class _DefaultTababrState extends State<DefaultTababr>

{



  @override


  List<Widget> _WidgetList = [


    Center(child: Text('Add')),

    Center(child: Text("Time")),

    Center(child: Text("addcall")),
  ];

  Widget build(BuildContext context) {


    return DefaultTabController(

      length: 3,
      initialIndex: 0,
      animationDuration: Duration(
        seconds: 1
      ),

      child: Scaffold(


        appBar: AppBar(
          title: Text('Material App Bar'),


          bottom: TabBar(

            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,



            tabs: [

              Icon(Icons.add),

              Icon(Icons.access_time),

              Icon(Icons.add_call),
            ],



          ),
        ),
        body: TabBarView(
          children: _WidgetList,
        )
      ),
    );
  }
}

