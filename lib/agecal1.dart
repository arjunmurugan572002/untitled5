import 'package:flutter/material.dart';


class birth extends StatefulWidget {
  const birth({Key? key}) : super(key: key);

  @override
  State<birth> createState() => _birthState();
}
int age=0;
TextEditingController _namecontroller=TextEditingController();
TextEditingController _datecontroller=TextEditingController();
String result = "" ;
class _birthState extends State<birth> {


  String Dob=_datecontroller.text;

  void calculateAge(DateTime Dob) {
    String Name= _namecontroller.text;

    setState(() {
      DateTime now = DateTime.now();
      int age = now.year - Dob.year;
      int month1 = now.month;
      int month2 = Dob.month;
      if (month2 > month1) {
        age--;
      }
      else if (month1 == month2) {
        int day1 = now.day;
        int day2 = Dob.day;
        if (day2 > day1) {
          age--;
        }
      }
      result =  "hi! $Name is $age years old";
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Age calculator"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 281),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Enter the name'),
            ),
          ),
          TextFormField(
            controller: _namecontroller,
            decoration: InputDecoration(

              hintText: "name",
            ),

          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(("Enter the date of birth (yyyy-mm-dd)")),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter the date",
            ),
            controller: _datecontroller,
          ),
          SizedBox(height: 50),
          ElevatedButton(onPressed: (){

               calculateAge(DateTime.parse(_datecontroller.text));

          }, child: Text("claculate Age")),

          Text("$result",style: TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}
