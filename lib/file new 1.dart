import 'package:flutter/material.dart';
import 'package:untitled5/file%20new%202.dart';


class pop2 extends StatelessWidget {
  const pop2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/kidsgenre.jpg"),
                fit: BoxFit.fill,
              ),
               shape: BoxShape.circle,

            ),
          ),
        ),
      ),
      body:  SingleChildScrollView (
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/kidsgenre.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 200,

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration:BoxDecoration(
                              border: Border.all(),
                               image: DecorationImage(
                                 image: AssetImage("assets/image.jpg"),
                                 fit: BoxFit.fill,
                               ),
                             borderRadius: BorderRadius.circular(30),
                              )
                            ),
                        ) ,
                        SizedBox(
                          height: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage("assets/image.jpg"),
                                fit: BoxFit.fill,
                              ),
                                borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(

                          prefixIcon: Icon(Icons.person,color: Colors.cyanAccent,),

                          border: OutlineInputBorder(),
                          hintText: "Enter the name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height:40,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text("login")),
                  ],

                ),

              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                children: [
                  Row(
                    children: [

                      SizedBox(
                        height: 200,
                      ),
                      Padding(

                        padding: const EdgeInsets.only(left: 20),
                        child: Container(

                          height:100,
                          width: 120,
                          child: GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const pop3()),
                              );
                            },

                          ),
                          decoration:BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/image.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.zero,
                          ) ,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "ONE"
                            ),
                            Text(
                                "TWO"
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/image.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
