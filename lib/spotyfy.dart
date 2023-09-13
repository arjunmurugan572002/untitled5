import 'package:flutter/material.dart';


class spotfi extends StatefulWidget {
  const spotfi({Key? key}) : super(key: key);

  @override
  State<spotfi> createState() => _spotfiState();
}

class _spotfiState extends State<spotfi> {
  List a=[

    "assets/mp1.jpg",
    "assets/mp1.jpg",
    "assets/mp1.jpg",
    "assets/mp1.jpg",
    "assets/mp1.jpg",
    "assets/nt1.jpg",
    "assets/nt1.jpg",
    "assets/nt1.jpg",
    "assets/nt1.jpg",
    "assets/mm.jpg",
    "assets/mm.jpg",
    "assets/mp1.jpg",
    "assets/nt1.jpg",
    "assets/mm.jpg",
    "assets/mp1.jpg",
    "assets/nt1.jpg",


  ];
  List b=[
    "Meesaya Murukku",
    "Enna Nadanthalum",
    "Sakkarakatti",
    "Machi Engaluku Ellam",
    "Vaadi Ne Va",
    "Single Pasanga",
    "Kerala Song",
    "Morattu Singlee",
    "Vengamavan",
    "Breakup Song",
    "Dhom Dhom",
    "IPhone 6 Nee Yendral",
    "The Conquest Of Time-Theme",
    "Naa Konjom Karuppu Thaan",
    "Kadhalikathey",
    "Kadhal Oru Aagayam",
  ];
  List c=[
    "Hiphop Tamizha, Kharesma Ravichandran",
    "Hiphop Tamizha,Jonita Gandhi",
    "Hiphop Tamizha,Teejay,AI Rufian",
    "Hiphop Tamizha,Jonita Gandhi",
    "Hiphop Tamizha,Vijay antony",
    "Aniruth Ravichandar,Rajesh",
    "Hippop Tamizha",
    "Hiphop Tamizha,Andhony Daasan",
    "Hiphop Tamizha,Jung Kook,BTS,FIFA Sound",
    "Hiphop Tamizha",
    "Hiphop Tamizha,Raghu Dixit,Sathayaprakash",
    "Hiphop Tamizha",
    "Hiphop Tamizha",
    "Hiphop Tamizha Kaushik Krish,Padmaladha",
    "Santhish Narayanan,Aniruth Ravichandar",
    "Hiphop Tamizha,Raghu Dixit,Sathayaprakash",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


      body:


      NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: true,
              leading: Icon(Icons.arrow_back,color: Colors.grey,),

              backgroundColor: Colors.black,





              flexibleSpace:

              FlexibleSpaceBar(



                centerTitle: true,
                title:Column(
                  children: [
                    SizedBox(height: 80,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                            height: 40,
                            width: 220,
                            // decoration: BoxDecoration(
                            //
                            // ),
                            child:  TextFormField(
                              textAlign: TextAlign.start,

                              style: TextStyle(fontSize: 15,color: Colors.white),

                              decoration:   InputDecoration(filled: true,
                                fillColor: Color(0xFF6f6f6f),
                                border:OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: 'Search Find Playlist',

                                prefixIcon: Icon(Icons.search,color: Colors.grey,),
                                // suffixIcon: Icon(Icons.document_scanner_rounded,)
                              ),

                            ),

                          ),
                        ),
                        SizedBox(
                          height: 36,
                          width: 70,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6f6f6f),
                                shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(5)

                                ),

                              ),
                              onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sort",style: TextStyle(color: Colors.grey),),
                          )),
                        )
                      ],
                    ),
                    SizedBox(height: 12,),
                    SizedBox(height: 2,),
                    Stack(
                      children:[
                        Container(
                          // alignment: Alignment.topCenter,
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/hp1.jpg",),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                          top: 10,
                          child: Container(

                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/mm.jpg"),fit: BoxFit.fill)
                            ),
                            //child: Icon(Icons.share),
                          ),),
                        Positioned(
                            bottom: 5,
                            child: Text("       Hiphop Tamizha Songs",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))
                      ],
                    ),
                    SizedBox(height: 12,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(


                              text: TextSpan(
                                text: 'Hiphop Tamizha,',
                                style: TextStyle(decoration:TextDecoration.underline,
                                    color: Colors.green),
                                children: const <TextSpan>[
                                  TextSpan(text: 'Naresh Iyer',
                                      style: TextStyle(decoration: TextDecoration.underline,
                                          color: Colors.green)),
                                  TextSpan(text: ' and',style: TextStyle(color: Colors.grey)),
                                  TextSpan(text: 'Vijay Antony',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.green))
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/nt1.jpg"),fit: BoxFit.fill)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Spotify",style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("3h 11min",style: TextStyle(color: Colors.grey),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite_border,color: Colors.grey,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_circle_down,color: Colors.grey,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.more_vert,color: Colors.grey,),
                              )
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
                stretchModes: [
                  StretchMode.blurBackground,
                ],

                background: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF554f4f),Color(0xFF272526),Colors.black],
                          begin: Alignment.topCenter,

                          end: Alignment.bottomCenter)),
                ),



              ),
              title:  Text("Hiphop Tamizha",style: TextStyle(color: Colors.grey),),
              // leading: Icon(Icons.arrow_back),
              collapsedHeight: 800,
            ),
          ];
        },
        body:
        ListView.builder(
          itemCount: a.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(

                    image:DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill) ),

              ),

              title: Text(b[index],style: TextStyle(color: Colors.white),),
              subtitle: Text(c[index],style: TextStyle(color: Colors.grey),),
              trailing: Icon(Icons.more_vert,color: Colors.grey,),
            );
            SizedBox(
              height: 36,
            );
          },
        ),




      ),
    );
  }
}