import 'package:flutter/material.dart';



class insta extends StatefulWidget {
  const insta({Key? key}) : super(key: key);

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,size: 30,color: Colors.black,),
        title: Text("flipkart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("@",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert_sharp,color: Colors.black,size: 30,),
          ),

        ],
      ),
      body: DefaultTabController(
length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
          return[
             SliverAppBar(
               backgroundColor: Colors.white,
               toolbarHeight: 400,
               flexibleSpace: Column(
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Container(
                           height: 100,
                           width:100,
                           decoration: BoxDecoration(
                            // border: Border.all(),
                             image: DecorationImage(
                               image: AssetImage("assets/flipkart2.png"),
                               fit: BoxFit.fill,

                             ),
                             shape: BoxShape.circle
                           ),

                         ),
                       ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 20),
                      child: Column(
                        children: [
                          Text('4,582',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('posts',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),)

                        ],
                      ),

                    ) ,
                     Padding(
                       padding: const EdgeInsets.only(left:25,top: 20),
                       child: Column(
                         children: [
                           Text("3.8M",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                           Text("followers",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),)
                         ],
                       ),
                     ),
                       Padding(
                         padding: const EdgeInsets.only(left:20,top: 20),
                         child: Column(
                           children: [
                             Text("14",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                             Text("Following",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),)
                           ],
                         ),
                       )
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 310,top: 10),
                     child: Text('FlipKart',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15 ),),
                   ),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 13,top: 10),
                         child: Text("Have queries? Send them here by clicking on this link",style: TextStyle(fontSize: 13,color: Colors.black54,fontWeight: FontWeight.bold),),
                       ),
                       //Icon(Icons.arrow_drop_down_sharp,color: Colors.yellow,)
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(Icons.link,color:Colors.blue,),
                         Text(" www.flipkart.com/helpcentre",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue),)
                       ],
                     ),
                   ),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           height: 30,
                           width: 150,

                           decoration: BoxDecoration(
                             //border: Border.all(),
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.black12,
                           ),
                           child: Center(child: Text("Follow",style: TextStyle(fontWeight: FontWeight.bold,),)),
                         ),
                       ),
                       Container(
                         height: 30,
                         width: 150,
                         decoration: BoxDecoration(
                           borderRadius:BorderRadius.circular(10),
                           color: Colors.black12,
                         ),
                         child: Center(child: Text("Message",style: TextStyle(fontWeight: FontWeight.bold,),)),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Container(
                           height: 30,
                           width: 33,
                           decoration: BoxDecoration(
                             //border:Border.all(),
                             borderRadius: BorderRadius.circular(8),
                             color: Colors.black12,
                           ),
                          child: Icon(Icons.person_add_outlined,size: 20,),
                         ),
                       )
                     ],
                   ),
                   Container(
                     height: 120,

                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                         itemCount: 7,
                         itemBuilder:( BuildContext context, int index)
                         {
                           return Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               children: [
                                 Container(
                                   height: 80,
                                   width: 80,
                                   decoration: BoxDecoration(
                                     //border:Border.all(),
                                     image: DecorationImage(
                                       image: AssetImage("assets/iphone.png"),
                                       fit: BoxFit.fill,
                                     ),
                                     shape: BoxShape.circle,
                                   ),
                                 ),
                                 Text("Products",style: TextStyle(fontSize: 15),)
                               ],
                             ),

                           );
                         }
                     ),
                   ),
                 ],
               ),
             ),
             SliverAppBar(
               backgroundColor: Colors.white,
               expandedHeight: 50,
               pinned: true,
             primary: false,
               title: TabBar(
                 tabs: [
                   Tab(icon: Icon(Icons.grid_on_sharp,color: Colors.black45,)),
                   Tab(icon: Icon(Icons.video_library_outlined,color: Colors.black45,)),
                   Tab(icon: Icon(Icons.star_outlined,color: Colors.black45,)),
                   Tab(icon: Icon(Icons.perm_contact_cal_outlined,color: Colors.black45,),)
                 ],
               ),
             )
          ];
          },
          body:TabBarView(children: [
            Container(
              height: 200,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: .77,
                  mainAxisSpacing:2,
                  crossAxisSpacing: 5,
                  maxCrossAxisExtent: 180,
                ),
                itemCount:20,
                itemBuilder:(_,index){
                  return Column(
                    children: [
                      Container(
                        height: 165,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/img.png"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),

                    ],
                  );
                },
              ),
            ),
            Container(
              height: 200,
              color: Colors.black45,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.773,
                  mainAxisSpacing:2,
                  crossAxisSpacing: 2,
                  maxCrossAxisExtent: 250,
                ),
                itemCount:8,
                itemBuilder:(BuildContext ctx, index){
                  return Column(
                    children: [
                      Container(
                        height: 250,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/img.png"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),



                    ],
                  );
                },
              ),
            ),
                   Center(child: Text("welcome \nto \nThe Flipkart",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Icon(Icons.perm_contact_cal,size: 150,)),
                        ),
                        Text("No Content",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                      ],
                    ),
          ]
          )
        ),

      ),
    );
  }
}
