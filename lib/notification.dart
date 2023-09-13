import 'package:flutter/material.dart';
import 'package:untitled5/amazon%20file%201.dart';


class notify extends StatelessWidget {
  const notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: GestureDetector(
            onTap: ()
            {


                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const file()),
                );

            },
            child: Icon(Icons.arrow_back)),
        title: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center(
            child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  image: AssetImage("assets/gifts.png"),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          Text("You're missing out.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 20,),
          Text(" Sign in to view personalised\n       notification and offers.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54),),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width:100,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.pink,
                      Colors.black,
                    ]
                ),

                //border: Border.all(),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Center(child: Text("Sign In",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ],
      ),
    );
  }
}
