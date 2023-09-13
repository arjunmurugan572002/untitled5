import 'package:flutter/material.dart';

import 'Login.dart';


class reg extends StatelessWidget {
  const reg({super.key});

  @override
  Widget build(BuildContext context) {
    final _key2 = GlobalKey<FormState>();
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: 890,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.teal,
                    Colors.black,
                  ]
              )
          ),
          child: Form(
            key: _key2,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Center(child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(right: 290 ),
                  child: Text("FULL NAME",style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.white
                  ),),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: Icon(Icons.person),

                        // border: OutlineInputBorder(),
                        hintText: "Enter the Name",
                      ),
                      keyboardType: TextInputType.text,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter the  Name";
                        }
                      },
                    )
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 330),
                  child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: Icon(Icons.person),

                        // border: OutlineInputBorder(),
                        hintText: "Enter the Email",
                      ),
                      keyboardType: TextInputType.text,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter the  valid Email";
                        }
                      },
                    )
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text("Username",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        prefixIcon: Icon(Icons.person),

                        // border: OutlineInputBorder(),
                        hintText: "Enter the Name",
                      ),
                      keyboardType: TextInputType.text,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Enter the  Username";
                        }
                      },
                    )
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text("Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.safety_check_outlined),
                      hintText: "Enter the Password",

                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    validator: (val)
                    {
                      if(val==null||val.isEmpty)
                      {
                        return 'Enter the valid password';
                      }
                    },

                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text("Confirm password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.safety_check_outlined),
                      hintText: "confirm the Password",

                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    validator: (val)
                    {
                      if(val==null||val.isEmpty)
                      {
                        return 'Enter the valid password';
                      }
                    },

                  ),
                ),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: ()
                  {
                    if (_key2.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("OK VALID")));

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const pop1()),
                      );
                    }
                  },
                  child: Container(
                    height: 40,
                    width:100,
                    decoration: BoxDecoration(
                      color: Colors.pink,

                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
