import 'package:flutter/material.dart';
import 'package:untitled5/FILE%20MAIL.dart';
import 'package:untitled5/file%20new%201.dart';
import 'package:untitled5/file%20new%202.dart';


import 'package:untitled5/report%20file.dart';

import 'Login.dart';



class newpage extends StatefulWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  State<newpage> createState() => _newpageState();
}
class _newpageState extends State<newpage> {
  int _index=0;
  final page=[
    pop1(),
    repf(),
    pop2(),
  ];
  void tap(index){
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.picture_in_picture),label: "picture"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}
