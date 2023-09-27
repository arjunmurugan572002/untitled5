import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled5/amazonprod.dart';



class amaz extends StatefulWidget {
  const amaz({Key? key}) : super(key: key);

  @override
  State<amaz> createState() => _amazState();
}

class _amazState extends State<amaz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.pink,
              Colors.black,
            ]
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.teal,
           leading: Icon(Icons.menu),
          title:
            Container(
            //  color: Colors.white,
              height: 35,
              child: InkWell(
                onTap: (){},
                child: TextFormField(

                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search,color: Colors.black87,),
                  hintText: "Search in Trinity",
                  suffixIcon:Icon(Icons.camera_alt_rounded),

                ),
          ),
              ),

            ),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.mic,color: Colors.black,size: 28,),
          )],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            // image: DecorationImage(
            //   image: AssetImage("assets/nature.jpg"),
            //   fit: BoxFit.fill,
            // ),
            borderRadius: BorderRadius.zero,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 500,
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
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.location_on_outlined,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Deliver To Arjun Tiruppur 641603",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
                    ],
                  ),
                ),



                Container(
                  height: 120,
                  // color: Colors.black54,
                  child: ListView.builder(
                    shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemCount: l1.length,
                    itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 15,right: 20),
                      child: Column(
                        children: [
                          Container(
                            height:80,
                            width: 70,
                            decoration:BoxDecoration(
                             //border: Border.all(),
                              //color: Colors.black54,
                              image: DecorationImage(
                                image: AssetImage(l1[index].image),
                                //fit: BoxFit.fill,

                              ),
                              // borderRadius: BorderRadius.zero,
                              shape: BoxShape.circle,
                            ),

                          ),
                          Text(l1[index].text),
                        ],
                      ),
                    );

                    },
              ),
                ),

                Padding(

                  padding: const EdgeInsets.only(bottom: 5),
                  child: CarouselSlider.builder(
                    options:CarouselOptions(
                      height: 250,
                      aspectRatio: 3/2,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      enlargeFactor: 3.0,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                    ),
                      itemCount: 5,
                      itemBuilder: (BuildContext context,int index,int pageview)
                    {
                      return Container(

                        width: 393,
                        decoration: BoxDecoration(
                          //border: Border.all(),
                          //color: Colors.black54,
                          image: DecorationImage(
                            image: AssetImage("assets/img_1.png"),
                            fit: BoxFit.fill,

                          ),
                          borderRadius: BorderRadius.zero,

                        ),

                      );

                    },
                      ),
                ),
                // SizedBox(
                //   height: 10,
                // ),

                  Container(
                    height: 200,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      //border: Border.all(),
                     // color: Colors.black54
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: l1.length,
                      itemBuilder:( BuildContext context, int index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              //border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage(l1[index].image),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        );

                      },
                    ),
                  ),



                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text("HURRY NOW, JOIN PRIME AT 999/YEAR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 400,
                 // color: Colors.black54,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing:20.0,
                        crossAxisSpacing: 20.0,
                    maxCrossAxisExtent: 200,
                  ),
                    itemCount:4 ,
                    itemBuilder:(BuildContext ctx, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: ()
                                {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const amzpro()),
                                    );

                                },
                                child: Container(
                                height: 150,
                                  width: 200,

                                  decoration: BoxDecoration(

                                  // border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage(l2[index].image),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Text(l2[index].text),
                            ],
                          ),
                        );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(" JOIN PRIME NOW"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class up
{
  String?image;
  String?text;


  up(this.image,this.text);

}
List l1=updata.map((e) =>up(e["image"], e["text"])).toList();

var updata=[
  {"image":"assets/iphone.png","text":"Iphone"},
  {"image":"assets/samsung.jpg","text":"Samsung"},
  {"image":"assets/oneplus.jpg","text":"Oneplus"},
  {"image":"assets/redme.jpg","text":"Redme"},
  {"image":"assets/realme.jpg","text":"Realme"},
];
class lap

{
  String?image;
  String?text;
  lap(this.image,this.text);

}


List l2=lapdata.map((e) => lap(e["image"],e["text"] )).toList();

var lapdata=[
  {"image":"assets/lenova.jpg","text":"Lenove"},
  {"image":"assets/dell.jpg","text":"Dell"},
  {"image":"assets/img_1.png","text":" Asus"},
  {"image":"assets/img.png","text":"MSI"},
];