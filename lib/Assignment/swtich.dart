import 'package:flutter/material.dart';

class QuestionScreen52 extends StatefulWidget {


  @override
  State<QuestionScreen52> createState() => _ScreenState();
}

class _ScreenState extends State<QuestionScreen52> {


  String result = " ";

  final controll1 = TextEditingController();
  final controll2 = TextEditingController();


  void Calcultion(){

    double Num1 = controll1.text.trim().isEmpty ? 0.0 : double.parse(controll1.text.trim().toString());
    double Num2 = controll2.text.trim().isEmpty ? 0.0 : double.parse(controll2.text.trim().toString());



    setState(() {
      switch(Selectedgroup){

        case 0 :

          result = (Num1 + Num2).toString();


          break;

        case 1 :

          result = (Num1 - Num2).toString();

          break;

        case 2 :


          result = (Num1 * Num2).toString();

          break;

        case 3 :

          result = (Num1 ~/ Num2).toString();

          break;
      }
    });

  }

  int ? Selectedgroup ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 52'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,),
              child: TextField(
                controller: controll1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: " Enter Number 1"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextField(
                controller: controll2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: " Enter Number 1"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  RadioListTile(value: 0,
                    groupValue: Selectedgroup ,
                    onChanged:(value) {
                      setState(() {

                        Selectedgroup = value;
                      });
                    },title: Text("Adition"),),


                  RadioListTile(value: 1,
                    groupValue: Selectedgroup ,
                    onChanged:(value) {
                      setState(() {

                        Selectedgroup = value;
                      });
                    },title: Text("Substraction"),),



                  RadioListTile(value: 2,
                    groupValue: Selectedgroup ,
                    onChanged:(value) {
                      setState(() {

                        Selectedgroup = value;
                      });
                    },title: Text("Multiplication"),),



                  RadioListTile(value: 3,
                    groupValue: Selectedgroup ,
                    onChanged:(value) {
                      setState(() {

                        Selectedgroup = value;
                      });
                    },title: Text("Division"),),

                ],
              ),
            ),




            ElevatedButton(onPressed: () {

              Calcultion();
            },
                child: Text("RESULT")),




            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(" RESULT = ${result}",style: TextStyle(

                fontWeight: FontWeight.bold,fontSize: 25,
              ),),
            ),








          ],
        ),
      ),
    );
  }
}

