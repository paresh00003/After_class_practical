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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Butoon"),
              onPressed: ()
              {
                print("You click on nutton");
              },
            ),


            TextButton(
              onPressed: () {
                print("you click on this");
              },
              child: Text("Textbutton2"),
            ),



            OutlinedButton(
                onPressed: ()
                {
                  print("you click");
                },
                child: Text("Textbutton2")

            ),


           ElevatedButton.icon(
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.cyan),

             onPressed: (){}
               , icon: Icon(
                 Icons.add,
             color:Colors.greenAccent,
               ), label: Text("Click"),
           ),

SizedBox(height: 20,),

      InkWell(
        onTap: () {
          print('custom button clicked..');
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: Text('Custom Button'),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500),
              borderRadius: BorderRadius.circular(5)),
        ),
      ),

SizedBox(height: 20,),

            InkWell(

              onTap: ()
              {
                print("You Click ON this Button");
              },

              child: Container(

                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),

                  child: Text("Click"),

                decoration: BoxDecoration(

                  border: Border.all(color: Colors.cyan.shade400),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.cyanAccent,
                ),

                ),


            ),

            InkWell(

              onTap: ()
              {
                print("You Click ON this Button");
              },

              child: Container(

                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),

                child: Text("Click"),

                decoration: BoxDecoration(

                  border: Border.all(color: Colors.cyan.shade400),
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.cyanAccent,  //color ke sath tap button show nahi ho raha hai
                ),

              ),


            ),
            ],
        ),

        )
    );
  }
}




