import 'package:flutter/material.dart';
import 'dart:math';
class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {


  String op1 = "", op2 = "",res='',num1='',
      selopt = "";

 // List li=[];

  bool clk = false;

  TextEditingController controllernumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black,
         title: Center(child: Text("CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
       ),
      body: Column(
          children: [
             SizedBox(
               height: 200,
             ),
            TextFormField(
              controller: controllernumber,

              ),

            SizedBox(
              height: 50,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 70,

                    child: ElevatedButton(onPressed: () {
                      if (selopt == 'Ac')
                        controllernumber.clear();
                      op1 = '';
                      op2 = '';
                      selopt="";
                      clk =false;
                      controllernumber.text = "";
                    }, child: Text("Ac")),
                  ),

                  Container(
                    height: 50,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        String  res=controllernumber.text;// li.removeLast();
                        controllernumber.text= res.substring(0,res.length - 1);
                        num1=controllernumber.text;
                      });
                    }, child: Text("<")),
                  ),
                  Container(
                      height: 50,
                      width: 70,
                      child: ElevatedButton(onPressed:(){} , child: Text("+/-"))),

                  Container(
                    height: 50,
                    width: 70,
                    child: ElevatedButton(onPressed: () {
                      controllernumber.text = "/";
                      selopt = "/";
                      clk = true;

                    }, child: Text("/")),
                  ),


                ]
            ),
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "7";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "7";
                      controllernumber.text = op1;
                    }
                  }, child: Text("7")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2 += "8";


                      controllernumber.text = op2;
                    }
                    else {
                      op1 +="8";

                      controllernumber.text = op1;
                    }
                  }, child: Text("8")),
                ),

                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2 = "9";

                      controllernumber.text = op2;
                    }
                    else {
                      op1 = "9";

                      controllernumber.text = op1;
                    }
                  }, child: Text("9")),
                ),

                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    controllernumber.text = "*";
                    selopt = "*";
                    clk = true;
                  }, child: Text("*")),
                ),


              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "4";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "4";
                      controllernumber.text = op1;
                    }
                  }, child: Text("4")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "5";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "5";
                      controllernumber.text = op1;
                    }
                  }, child: Text("5")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "6";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "6";
                      controllernumber.text = op1;
                    }
                  }, child: Text("6")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    controllernumber.text = "-";
                    selopt = "-";
                    clk = true;

                  }, child: Text("-")),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "1";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "1";
                      controllernumber.text = op1;
                    }
                  }, child: Text("1")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "2";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "2";
                      controllernumber.text = op1;
                    }
                  }, child: Text("2")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "3";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "3";
                      controllernumber.text = op1;
                    }
                  }, child: Text("3")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    controllernumber.text = "+";
                    selopt = "+";
                    clk = true;

                  }, child: Text("+")),
                ),
              ],
            ),
        SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    String d=controllernumber.text;
                    int a=int.parse(d);

                    double res=a/100;

                    controllernumber.text=res.toString();
                    // controllernumber.text = "sq";
                    // selopt = "sq";
                    // clk = true;

                  }, child: Text("%")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    String c=controllernumber.text;
                    int a=int.parse(c);

                    double res=sqrt(a);

                  controllernumber.text=res.toString();
                    // controllernumber.text = "sq";
                    // selopt = "sq";
                    // clk = true;

                  }, child: Text("sq")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    if (clk) {
                      op2+= "0";
                      controllernumber.text = op2;
                    }
                    else {
                      op1+= "0";
                      controllernumber.text = op1;
                    }
                  }, child: Text("0")),
                ),

                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    op1=op1+".";
                    controllernumber.text ="op1" ;
                   // selopt = "%";
                   // clk = true;

                  }, child: Text(".")),
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(onPressed: () {
                    var a = double.parse(op1);
                    var b = double.parse(op2);
                    if (selopt == "-") {
                      double res = a - b;
                      controllernumber.text = res.toString();
                      //op1=controllernumber.text;
                      //clk=true;
                     // li.add(controllernumber.text);
                    }
                    else if(selopt=="+")
                    {


                      double res = a + b;
                        controllernumber.text = res.toString();
                      // p1=controllernumber.text;
                     // clk=true;
                     //  li.add(controllernumber.text);
                    //
                    }
                    else if(selopt=="/")
                    {

                      double res = a/b;
                      controllernumber.text = res.toString();
                      //op1=controllernumber.text;
                     // clk=true;
                      //li.add(controllernumber.text);
                    }
                    else if(selopt=="*")
                      {

                        double res=a*b;
                        controllernumber.text=res.toString();
                        // op1=controllernumber.text;
                        // clk=true;
                      }
                    else if(selopt=="sq")
                    {

                        double res=sqrt(a);

                      controllernumber.text=res.toString();
                      // op1=controllernumber.text;
                      // clk=true;
                    }

                    }, child: Text("=")),
                ),



              ],
            )
          ]
      ),

    );
  }
}