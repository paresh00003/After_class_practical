import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Customdailog(),
    );
  }
}

class Customdailog extends StatefulWidget {
  const Customdailog({super.key});

  @override
  State<Customdailog> createState() => _CustomdailogState();
}

class _CustomdailogState extends State<Customdailog> {
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

            ElevatedButton(onPressed: (){

              Customdailogbutton1();

            }, child: Text("Custom Dailog")),
          ],
        ),
      ),
    );
  }

  void Customdailogbutton1() {

    showDialog(context: context, builder: (context) {

      return  Dialog(

        backgroundColor: Colors.yellow,

        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [

                CircleAvatar(

                  radius: 30,

                  backgroundImage: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20221004/pngtree-fire-sparks-background-with-embers-flying-free-jpg-and-psd-image_1466857.jpg"),

                ),

                SizedBox(height: 10,),

                Text("Congratulation"),


                SizedBox(height: 10,),

                RatingBar.builder(

                  itemCount: 5,
                  initialRating: 2.5,
                  itemSize: 40,
                  allowHalfRating: true,
                  itemPadding: EdgeInsets.symmetric(horizontal:10,vertical: 60),



                  itemBuilder: (context, index) {

                    return Icon(Icons.star,color: Colors.red,);



                }, onRatingUpdate: (value) {

                    print(value);

                },)



              ],
            ),
          ),
        ) ,

      );
    },);
  }


  }




