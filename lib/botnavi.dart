import 'package:flutter/material.dart';
import 'package:untitled5/FILE%20MAIL.dart';
import 'package:untitled5/file%20new%201.dart';

import 'file new 2.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({Key? key}) : super(key: key);

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index =1 ;


  final pages= [
mail(),
    pop3(),
    pop3(),
    pop3(),
  ];


  void a(index)
  {
    setState(() {
      _index = index;
    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: 'profile'),
       ],

       currentIndex: _index,
       onTap: a,
     ),
    );
  }
}


