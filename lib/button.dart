// import 'dart:js_util';

import 'package:flutter/material.dart';
class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}
TextEditingController num=TextEditingController();
int c=0;
int d=0;

void sub(){
  c--;
  num.text=c.toString();

}
void add(){
  c++;
  num.text=c.toString();
d=c;
}
class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         SizedBox(height: 50,),
        Row(
          children: [
            Container(
              height: 30,
              width: 40,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  sub();
                });
              }, child: Text("-")),
            ),
            Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all()
              ),
              child: TextFormField(
             decoration: InputDecoration(
               border: OutlineInputBorder()
             ),
                controller: num,),


            ),
            Container(
              height: 30,
              width: 40 ,
              child: ElevatedButton(onPressed:(){
                setState(() {
                  add();
                });
              }, child: Text("+")),
            )
          ],
        )
       ],
    );
  }
}
