import 'dart:async';
import 'Login.dart';
import 'main.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds:3 ),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                pop1()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [Colors.teal,Colors.black],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                //Image.asset("assets/t.png",color: Colors.white.withOpacity(1), colorBlendMode: BlendMode.colorBurn,),
                Padding(
                  padding: const EdgeInsets.only(top:200),
                  child: Text("TRANITY",textAlign:TextAlign.center,
                    style: TextStyle(
                      color: Colors.pink,

                      fontWeight: FontWeight.bold,
                      fontSize:30.0,

                    ),
                  ),
                ),
              ],
            ),

            CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}