import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:untitled5/add%20cart%20page.dart';
import 'package:untitled5/amazonfile.dart';
import 'package:untitled5/categories.dart';
import 'package:untitled5/file%20new%201.dart';
import 'package:untitled5/file%20new%202.dart';
import 'package:untitled5/file%20new%203.dart';

import 'package:untitled5/notification.dart';
import 'package:untitled5/profile%20page.dart';



class file extends StatefulWidget {
  const file({Key? key}) : super(key: key);

  @override
  State<file> createState() => _fileState();
}

class _fileState extends State<file> {
  int _index=0;
  final ListQueue<int> _navigationQueue = ListQueue();

  final pages=[
    amaz(),
    category(),
    notify(),
    cart(),
    profile(),
  ];
  void tap1(index){
    if(index != _index){
      _navigationQueue.removeWhere((element) => element == index);
      _navigationQueue.addLast(index);
      setState(() {
        _index = index;
      });
    }
  }
  Future<bool> _willpop() async {
  setState(() {
  _navigationQueue.removeLast();
  int position = _navigationQueue.isEmpty ? 0 : _navigationQueue.last;
  _index = position;
  });
  return false;
}

@override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willpop,
      child: Scaffold(
        body:pages[_index] ,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,

   selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.blue,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.black),label:"Home",),
            BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.black),label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active,color: Colors.black),label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_outlined,color: Colors.black),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.black),label: "Menu"),
          ],


          currentIndex: _index,
          onTap:tap1 ,
        ),
      ),
    );
  }
}
