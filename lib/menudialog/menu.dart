import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.search)),

          PopupMenuButton(

            onSelected: (value) {

              print(value);

              switch (value){

                case 'setting':

                  break;

                case 'Profile':

                  break;

                case 'Menu':

                  break;

                case 'Logout':

                  break;


              }
            },

            itemBuilder: (context)



          {
             return [

               PopupMenuItem(


                   value: 'setting',
                   child: Text("Setting")),

            PopupMenuItem(
            value: 'Profile',
            child: Text("Profile")),

               PopupMenuItem(
                   value: 'Menu',
                   child: Text("Menu")),

               PopupMenuItem(
                   value: 'Logout',
                   child: Text("Logout")),

             ];

          },),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

