import 'package:flutter/material.dart';


class pop4 extends StatelessWidget {
  const pop4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/image.jpg"),
                fit: BoxFit.fill,
              ),
                shape: BoxShape.circle,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,size: 40),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height:150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [



                           Container(
                            height: 120,
                            width: 145,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage("assets/image.jpg"),
                                fit: BoxFit.fill,
                              ),
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),topLeft: Radius.circular(10)),
                            ),
                          ),
                        Text('hi'),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height:120,
                          width:145 ,
                          decoration: BoxDecoration(
                            border: Border.all(),

                            image: DecorationImage(
                              image: AssetImage("assets/image.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                        ),
                        Text("HELLO"),
                      ],
                    ),
                  ),
                )

              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  image: AssetImage("assets/kidsgenre.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius:BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/image.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),

                        hintText: "enter",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
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
              ),
            ),
            SizedBox(
              height:70,
            ),
            Container(
              height:140,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.zero,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration (
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/nature.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Center(child: Text("HELLO")),
                    ),
                  ),
                  Column(
                    children:[

                    SizedBox(
                      height:25,

                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.zero,
                          ),
                          child: Icon(Icons.arrow_left,size: 30),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.zero,
                          ),
                          child: Icon(Icons.arrow_right,size: 30),

                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        "WELCOME TO THE GT SOFTTECH ",
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
