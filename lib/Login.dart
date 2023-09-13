import 'package:flutter/material.dart';
import 'package:untitled5/FILE%20MAIL.dart';
import 'package:untitled5/amazon%20file%201.dart';
import 'package:untitled5/amazonfile.dart';
import 'package:untitled5/file%20new%201.dart';
import 'package:untitled5/file%20new%202.dart';
import 'package:untitled5/registerpage.dart';


class pop1 extends StatelessWidget {
  const pop1({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {



    final _key1 = GlobalKey<FormState>();
    return Scaffold(
     // appBar: AppBar(
     //    leading:  Padding(
     //      padding: const EdgeInsets.all(8.0),
     //      child: Container(
     //
     //        decoration: BoxDecoration(
     //          border: Border.all(),
     //          image: DecorationImage(
     //            image: AssetImage("assets/kidsgenre.jpg"),
     //            fit: BoxFit.fill,
     //          ),
     //            shape: BoxShape.circle,
     //
     //        ),
     //      ),
     //    ),
     //    title:
     //    Center(child: Text("HELLO",style: TextStyle( color: Colors.cyanAccent,fontSize: 30),)),
     //
     //    actions: [
     //      Padding(
     //        padding: const EdgeInsets.all(8.0),
     //        child: Icon(Icons.menu,size: 30),
     //      ),
     //    ],
     //  ),
      body:Form(

        key: _key1,
        child: Container(
          height: double.infinity,
          width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors. teal,
                    //Colors.white,

                    Colors.black,
                  ]
              ),
            ),

          child: Column(
            children: [

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text("LOGIN",style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 310),
                        child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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

                          validator: (value) {
                          final exp = RegExp(r"^[a-zA-Z0_9]+@[a-zA-Z0-9-]+[.]+[a-z]*$").hasMatch(value!);
                           if (value!.isEmpty){
                             return "Enter Email id";
                           }
                           else  if (!exp) {
                             return 'Enter  Valid Name';
                           }
                          return null;
                          },
                        )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
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
                      SizedBox(
                        height: 20,
                      ),

                  // GestureDetector(
                  //   onTap: ()
                  //   {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const pop1()),
                  //     );
                  //   },
                  // ),

                     GestureDetector(
                       onTap: ()
                       {
                         if (_key1.currentState!.validate()) {
                           ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(content: Text("OK VALID")));

                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const file()),
                           );
                         }
                       },
                       child: Container(
                         height: 40,
                         width:200,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(
                                 begin: Alignment.centerLeft,
                                 end: Alignment.bottomLeft,
                                 colors: [
                                   Colors.pink,
                                   Colors.black,
                                 ]
                             ),

                           border: Border.all(),
                           borderRadius: BorderRadius.circular(30)
                         ),
                         child: Center(child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                       ),
                     ),

                      SizedBox(
                        height: 50,
                      ),

                      Text("Or Sign up using",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 40,),
                      Row(
                        children: [

                          Padding(

                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                //border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/facebook.png"),
                                ),
                                shape: BoxShape.circle,
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left:13),
                              child: Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/twitter2.png"),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  //border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/insta.png"),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),

                        ],
                      ),
                      SizedBox(height: 90,),
                      Text("Or Sign Up Using",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                      GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const reg()),
                            );
                          },
                          child: Text("\n SIGN UP",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
