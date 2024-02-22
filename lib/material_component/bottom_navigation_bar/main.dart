import 'package:flutter/material.dart';
import 'package:practical/material_component/bottom_navigation_bar/screens/cart.dart';
import 'package:practical/material_component/bottom_navigation_bar/screens/notification.dart';
import 'package:practical/material_component/bottom_navigation_bar/screens/profile.dart';
import 'package:practical/material_component/bottom_navigation_bar/screens/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DashBoardScreen(),
      theme: ThemeData(
        useMaterial3: true
      ),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var selecetindex = 0;

  final List<Widget> _widgetList = [
    Profile(),
    Cart(),
    Search(),
    Notification1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Material App Bar'),
      ),

      body: Center(
        child: _widgetList[selecetindex],
      ),

      //scaffold item bottom navigation bar

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(Icons.person),
              backgroundColor: Colors.cyanAccent),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.shopping_cart),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
              backgroundColor: Colors.blue),


          BottomNavigationBarItem(

              label: 'Notification',
              icon: Icon(Icons.notifications),
              backgroundColor: Colors.orange),
        ],

        currentIndex: selecetindex,
        onTap: (value) {
          setState(() {
            selecetindex = value;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.red,
        // type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.grey,
        // elevation: 1,
        showSelectedLabels: true,
      ),
    );
  }
}
