import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MenuList(),
    );
  }
}

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {

  List<String> MyLIST = ['java', 'python','dart','php','c','c+','ok'];





  void DeletedItem(String language) {

    setState(() {
      MyLIST.removeWhere((element) => element == language);
    });


  }


  Future<String ? > showALirtdialog(BuildContext context) async {


    return await showDialog(context: context, builder: (context) {

      return AlertDialog(

        title: Text ('Delete'),

        content: Text('Are you sure you want to delete this item'),


        actions: [

          ElevatedButton(onPressed: (){

            Navigator.pop(context,'delete');

          }, child: Text("Delete")),

          ElevatedButton(onPressed: (){

            Navigator.pop(context,'cancel');


          }, child: Text("Cancel")),
        ],

      );
    },);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: MyLIST.length,
        itemBuilder: (context, index) {

          String Language = MyLIST[index];

          return ListTile(

            leading: Icon(Icons.list),
            title: Text(Language),
            trailing: PopupMenuButton(

              onSelected: (value) async {
                switch(value){
                  case 0:
                    print('$Language : edit item selected');
                    break;
                  case 1:
                    var result = await showALirtdialog(context);

                    if(result!=null){
                      switch(result){
                        
                        case 'delete':
                          
                          DeletedItem(Language);
                          
                          break;
                        case 'cancel':
                          print('cancel item clecked');
                          break;
                      }
                    }
                    break;
                }
              },
              itemBuilder: (context) {

                return [

                  PopupMenuItem(
                      value: 0,
                      child: Text(  ' cancel')),



                  PopupMenuItem(
                      value: 1,

                      child: Text('Delete')),


                ];
              },
            ),
          );

      },)
    );
  }




}



