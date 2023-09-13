
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/Login.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:FlutterSplashScreen.fadeIn(
              backgroundImage: Image.asset("assets/splash_bg.png"),
              childWidget: SizedBox(
                height: 100,
                width: 100,
                child: Text("TRINITY",style: TextStyle(color: Colors.pink,fontSize: 25),),
              ),
              defaultNextScreen: const pop1(),

            ),
          ),

        ],
      ),

    );
  }
}



