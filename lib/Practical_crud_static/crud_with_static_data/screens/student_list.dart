

import 'package:flutter/material.dart';
import 'package:practical/Practical_crud_static/crud_with_static_data/model/student.dart';
import 'package:uuid/uuid.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {

  List<Student> studentList = [];
  List<String> options = [];

   Addstudent(student, BuildContext context) {

Navigator.pop(context);
     setState(() {
       studentList.add(student);
     });
   }


  void deleterecord(Student student, BuildContext context) {

     setState(() {

       studentList.removeWhere((element) => element.id == student.id);
     });
  }


  void Updatestuent1(Student  std, BuildContext context) {

     int index = studentList.indexWhere((element) => element.id == std.id);

     if(index!= -1){

       setState(() {

         studentList[index] = std;

       });
     }


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Showbottomdailog1(context);

        },
        child: Icon(Icons.add,color: Colors.white),
      ),


      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index) {

            Student student = studentList[index];

            return Card(
              child: ListTile(


                leading: Icon(Icons.account_circle_rounded,),
                title: Text(student.name!),
                subtitle: Text("emali - ${student.email}\n course ${student.email}"),
                isThreeLine: true,
                trailing: PopupMenuButton(

                  onSelected: (value) {

                    switch (value)
                        {
                      case 0 :

                        Showbottomdailog1(context,student);

                        break;

                      case 1:

                        deleterecord(student,context);

                        break;
                    }
                  },

                  itemBuilder: (context) {

                    return [

                      PopupMenuItem(


                        value: 0,
                          child: Text('Edit')),


                      PopupMenuItem(

                          value: 1,
                          child: Text('Delete')),

                    ];
                  },
                ),

              ),
            );

        },),
      )
    );
  }

  void Showbottomdailog1(BuildContext context, [Student ? student]) {

    final _Namecontroller = TextEditingController(text: student != null ? student.name : '');
    final _Emailcontroller = TextEditingController(text: student != null ? student.email : '');
    final _Coursecontroller = TextEditingController(text: student != null ? student.course : '');


    showModalBottomSheet(context: context,

      isScrollControlled: true,
      builder: (context) {

      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 25,
              right: 25,
              top: 25,
              bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 25
                  :  MediaQuery.of(context).viewInsets.bottom + 25
          ),

          child: Column(
            children: [

              TextField(
                controller: _Namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Name"

                ),
              ),

              SizedBox(height: 10,),


              TextField(
                controller: _Emailcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter E-mail"

                ),
              ),

              SizedBox(height: 10,),


              TextField(
                controller: _Coursecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Course"

                ),
              ),

              SizedBox(height: 10,),


              Container(

                width: double.infinity,
                child: FilledButton(onPressed: (){

                  String _name = _Namecontroller.text.trim();
                  String _email = _Emailcontroller.text.trim();
                  String _course = _Coursecontroller.text.trim();

                 Student std = Student(name: _name,email: _email,course: _course,id: getUuid());

                  if (student != null) {

                    Updatestuent1(std, context);
                  } else {
                    // add
                    Addstudent(std, context);
                  }
                },child: Text(
                    student != null ? 'Update Student' : 'Add Student'),

                ),
              ),


            ],
          ),
        ),
      );

    },);

  }

  String getUuid(){

    var uuid = Uuid();

    return uuid.v4();
  }









}



