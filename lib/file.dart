import 'package:flutter/material.dart';

class pop extends StatelessWidget {
  const pop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 25,color: Colors.cyanAccent,),
        title: Text("hi",
          style: TextStyle(color: Colors.cyanAccent,fontSize: 35,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),

        ],

      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              hintText: "Enter Name",


            ),
          ),
          Text("welcome"),
          TextFormField(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("login")),
          ),
          Container(
            height: 200,
            width: 300,
            //color: Colors.cyanAccent,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage("assets/image.jpg"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle

            ),
            child: Text("Hello"),
          ),
        ],
      ),
    );
  }
}
