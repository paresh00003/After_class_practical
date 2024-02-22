import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TabBarNew(),
    );
  }
}

class TabBarNew extends StatefulWidget {
  const TabBarNew({super.key});

  @override
  State<TabBarNew> createState() => _TabBarNewState();
}

class _TabBarNewState extends State<TabBarNew> with TickerProviderStateMixin{

  late TabController _tabController ;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }


  List<Widget> _widgetList = [

    Center(
      child: Text("add"),
    ),

    Center(
      child: Text("circle "),
    ),

    Center(
      child: Text("time"),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),

        bottom: TabBar(

          controller: _tabController,


          tabs: [


            Icon(Icons.add),

            Icon(Icons.account_circle_rounded),

            Icon(Icons.access_time),



        ],)
      ),
      body: TabBarView(
          controller: _tabController,
          children: _widgetList),

      floatingActionButton: FloatingActionButton(

        onPressed: () {

          var index = _tabController.index;

          if(index== _tabController.length -1){
            
            _tabController.animateTo(0,duration: Duration(seconds: 1));
          }
          else{
            index++;
            _tabController.animateTo(index,duration: Duration(seconds: 1));
          }


        },
        child: Icon(Icons.ads_click),
      ),
    );
  }
}

