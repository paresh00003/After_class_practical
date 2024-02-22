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
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            CircleAvatar(

              radius: 105,
              backgroundColor: Colors.black26,

              child: CircleAvatar(

                radius: 100,
                  backgroundImage: AssetImage('assets/images/gambar-kartun-doraemon-keren-wallpaper-22.png'),
              ),

              foregroundImage: NetworkImage(
                'https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV'
              ),

            ),

            Placeholder(
              fallbackHeight: 200,
              fallbackWidth: 200,

              child: CircleAvatar(

                radius: 100,
                backgroundImage: AssetImage('assets/images/gambar-kartun-doraemon-keren-wallpaper-22.png'),
              ),

            ),

            FadeInImage (
              height: 100,
              width: 100,
              placeholder: AssetImage('assets/images/gambar-kartun-doraemon-keren-wallpaper-22.png') , image: NetworkImage(
          'https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV'
      ),)


          ],
        ),
      )
    );
  }
}

