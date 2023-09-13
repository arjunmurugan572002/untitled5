import 'package:flutter/material.dart';

import 'ClassTest.dart';

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}
String result='';
double? _bmi;

class _bmiState extends State<bmi> {
  TextEditingController _heightcontroller=TextEditingController();
  TextEditingController _weightcontroller=TextEditingController();

  var objA = A();


  void _calculate() {

    // Check if the inputs are valid


    setState(() {
      objA.disp();
      A.p = 10;
      int weight=int.parse(_weightcontroller.text);
      int  height=int.parse(_heightcontroller.text);

      _bmi = weight / (height * height);

      result= "Bmi is $_bmi";
      showDialog(
        context: context, barrierDismissible: false, // user must tap button!

        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text("$result"),


          );
        },
      );



    });

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculation"),
      ),

      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Container(
              height: 300,
    width: 300,
    decoration: BoxDecoration(
      border: Border.all()
    ),
    child: Column(
    children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             controller: _weightcontroller,
             decoration: InputDecoration(
               hintText: "Enter the weight",
             ),
           ),
         ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: _heightcontroller,
          decoration: InputDecoration(
            hintText: "Enter the height",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed:
              _calculate

        , child:Text("calculate")),
      ),
//Text("$result"),

    ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
