import 'package:flutter/material.dart';


class sp extends StatefulWidget {
  const sp({Key? key}) : super(key: key);

  @override
  State<sp> createState() => _spState();
}

class _spState extends State<sp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [

                SliverAppBar(
                toolbarHeight: 400,
                  flexibleSpace:Container(
                    decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.brown,
                          Colors.black,
                        ]
                    )
                    ),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 40,
                                    width: 280,
                                    // color: Colors.cyanAccent,
                                    decoration: BoxDecoration(
                                      //border: Border.all(width: .5),
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white10,
                                        prefixIcon: Icon(Icons.search,color: Colors.white,),
                                        border: InputBorder.none,
                                        hintText: "Find in Playlist",

                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(

                                       // border:Border.all(),
                                        color: Colors.white10,
                                    ),
                                    child: Center(child: Text("Sort",style: TextStyle(color: Colors.white),)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Container(
                                height: 230,
                                width: 230,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/music.jpg"),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                            )


                          ],
                        ),
                  ),
                  ),


            ];
          },
          body:SingleChildScrollView(
            child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50,top: 10),
                      child: Text(" Best of 2000s from Kollywood Cover:Ajith Kumar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white54),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border:Border.all(),
                              image: DecorationImage(
                                image: AssetImage("assets/spotify.jpg"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                       Text("Spotify",style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:214),
                      child: Text("117,931 likes . 8h 37min",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white54),),
                    ),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,top: 20),
                         child: Icon(Icons.heart_broken_outlined,size: 35,color: Colors.white,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Icon(Icons.arrow_circle_down,size: 33,color: Colors.white54,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:25,top: 20),
                         child: Icon(Icons.more_vert_sharp,size: 35,color: Colors.white54,),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 100,top: 20),
                         child: Icon(Icons.shuffle, size: 35,color: Colors.white54,),
                       ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,top: 20),
                       child: Container(
                         height: 60,
                         width: 60,
                         decoration: BoxDecoration(
                           //border:Border.all(),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30),
                         ),
                        child: Icon(Icons.arrow_right,size: 60,),
                       ),
                     )
                     ],
                   ),
                    Container(
                      height: 670,
                      width: 390,
//color: Colors.white,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                       // scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: ( BuildContext context, int index)
                        {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading:Container(
                                height: 100,
                                width: 70,

                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  image: DecorationImage(
                                    image: AssetImage("assets/headphone.jpg"),
                                    fit: BoxFit.fill,
                                  )
                                ),
                              ),
                              title: Text("Taxi Taxi\n A.R.Rahman,benny,...",style: TextStyle(color: Colors.white),),
                              trailing: Icon(Icons.more_vert_sharp,color: Colors.white,),
                              ),
                            );

                        },

                      ),
                    )
                  ],
                ),
          ),





          ),
        ),
      );
//
  }
}
