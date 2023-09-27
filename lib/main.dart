import 'package:flutter/material.dart';


import 'package:untitled5/add%20cart%20page.dart';

import 'package:untitled5/amazon%20file%201.dart';
import 'package:untitled5/amazonfile.dart';
import 'package:untitled5/amazonproduct1.dart';
import 'package:untitled5/amazonproduct2.dart';
import 'package:untitled5/amazonproduct3.dart';

import 'package:untitled5/button.dart';
import 'package:untitled5/categories.dart';
import 'package:untitled5/edit%20profile.dart';


import 'package:untitled5/notification.dart';

import 'package:untitled5/profile%20page.dart';

import 'package:untitled5/registerpage.dart';

import 'package:untitled5/splash.dart';

import 'Login.dart';

import 'amazonprod.dart';

// import 'package:untitled5/report%20file.dart';
//
// import 'botnavi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:cart()
    );
  }
}

