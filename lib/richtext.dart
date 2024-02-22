import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: RichText(
          text: TextSpan(

            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
            children:
              [
                TextSpan(
                  text: "V",style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w900,
                )
                ),
                TextSpan(text: "irat "),



                TextSpan(
                    text: "K",style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w900,
                )
                ),

                TextSpan(text: "ohli "),

                TextSpan(
                  text: "was born on 5 November 1988 in Delhi into a Punjabi Hindu family. His father, Prem Kohli, worked as a criminal lawyer and his mother, Saroj Kohli, served as a housewife. He has an older brother, Vikas, and an older sister, Bhawna.[6] Kohli's formative years were spent in Uttam Nagar. He commenced his early education at Vishal Bharti Public School.[7] According to his family, Kohli exhibited an early affinity for cricket as a mere three-year-old. He would pick up a cricket bat, display natural skill, and request his father to bowl to him.[8]",

                )

              ]
          ),
        )
      ),
    );
  }
}
