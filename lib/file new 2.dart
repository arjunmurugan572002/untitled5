import 'package:flutter/material.dart';

import 'Login.dart';


class pop3 extends StatelessWidget {
  const pop3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 10,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage("assets/image.jpg"),
                  fit: BoxFit.fill,
            ),
              shape: BoxShape.circle,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(" helllo"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,size: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera,size: 30),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width:double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/nature.jpg"),
            fit: BoxFit.fill,
          ),
          //borderRadius: BorderRadius.zero,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30,left:30 ),
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/kidsgenre.jpg"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.zero,

                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              height: 70,
                              width: 100,
                              decoration:BoxDecoration(
                                border: Border.all(),

                                  borderRadius: BorderRadius.zero,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/image.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                       borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  Text('hi'),
                                ],
                              ),


                          ),

                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Container(
                              height:70,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.zero,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/image.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                        borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  Text("HELLO",style: TextStyle(color: Colors.cyanAccent)),
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              height: 70,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/image.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.zero,

                              ),
                              child: Center(child: Text("HI",style: TextStyle(color: Colors.cyanAccent))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Text('hi'),
                                Text('one'),
                                Text("TWO"),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 70,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/image.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                  borderRadius: BorderRadius.zero,
                              ),
                              child: Center(child: Text("WELCOME",style: TextStyle(color: Colors.cyan),)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height:250,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/kidsgenre.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.zero,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const pop1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/nature.jpg"),
                              fit: BoxFit.fill,
                            ),
                                borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              hintText: "enter the name",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/image.jpg"),
                              fit: BoxFit.fill,
                            ),
                              shape: BoxShape.circle,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height:250,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/kidsgenre.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.zero,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const pop1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/nature.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              hintText: "enter the name",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/image.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              ElevatedButton(onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const pop1()),
                );
              }, child: Text("ok"))
            ],
          ),
        ),
      ),
    );
  }
}
