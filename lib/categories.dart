import 'package:flutter/material.dart';
import 'package:untitled5/amazon%20file%201.dart';
import 'package:untitled5/amazonproduct1.dart';
import 'package:untitled5/amazonproduct2.dart';
import 'package:untitled5/amazonproduct3.dart';



class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: GestureDetector(
            onTap: ()
            {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const file()),
              );

            },
            child: Icon(Icons.arrow_back,)),
        title: Text(" All Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Icon(Icons.search,size: 25,),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Icon(Icons.mic),
          )
        ],
      ),
      body: Row(
        children: [
          Container(
            height: double.infinity,
            width: 100,
            color: Colors.grey,
              child: ListView.builder(
     // shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 6,
          itemBuilder: (BuildContext context, int index){
    return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
    children: [
    Container(
    height:120,
    width: 100,

    decoration:BoxDecoration(
   // border: Border.all(),
    //color: Colors.black54,

    image: DecorationImage(
    image: AssetImage(lis3[index].image),
    fit: BoxFit.fill,

    ),
     borderRadius: BorderRadius.zero,
    //shape: BoxShape.circle,
    ),

    ),
    Text(lis3[index].text),
    ],
    ),
    );

    },
    ),
          ),

         // Divider(),
         
          Container(
            height: double.infinity,
            width: 293,
           // color: Colors.,
            child:
            SingleChildScrollView(
              
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top:20 ),
                        child: Text("Electronics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            //border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/electronics.png"),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                 SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text("Laptops",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 390,
                   // color: Colors.black54,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: .57,
                        mainAxisSpacing:2,
                        crossAxisSpacing: 5,
                        maxCrossAxisExtent: 100,
                      ),
                      itemCount:lis.length ,
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
                                    MaterialPageRoute(builder: (context) => const amzpro1()),
                                  );

                                },
                                child: Container(
                                  height: 100,
                                  width: 150,

                                  decoration: BoxDecoration(

                                   // border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage(lis[index].image),
                                      //fit: BoxFit.fill,
                                    ),
                                   // borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              Text(lis[index].text),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text("Headphone",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                  GestureDetector(
                    onTap: ()
                    {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const amzpro2()),
                      );

                    },
                    child: Container(
                      height: 150,
                      //color: Colors.black54,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:lis1.length ,
                        itemBuilder:(BuildContext ctx, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 150,

                                  decoration: BoxDecoration(

                                    //  border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage(lis1[index].image),
                                        //fit: BoxFit.fill,
                                      ),
                                      // borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.circle
                                  ),
                                ),
                                Text(lis1[index].text),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text("Smartwatchs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 300,
                    //color: Colors.black54,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: .57,
                        mainAxisSpacing:2,
                        crossAxisSpacing: 5,
                        maxCrossAxisExtent: 100,
                      ),
                      itemCount:lis2.length,
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
                                    MaterialPageRoute(builder: (context) => const amzpro3()),
                                  );

                                },
                                child: Container(
                                  height: 100,
                                  width: 150,

                                  decoration: BoxDecoration(

                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage(lis2[index].image),
                                        fit: BoxFit.fill,
                                      ),
                                      // borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              Text(lis2[index].text),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
class lap1

{
  String?image;
  String?text;
  lap1(this.image,this.text);

}


List lis=lap1data.map((e) => lap1(e["image"],e["text"] )).toList();

var lap1data=[
{"image":"assets/lenova.jpg","text":"Lenove"},
{"image":"assets/dell.jpg","text":"Dell"},
{"image":"assets/img_1.png","text":" LG"},
{"image":"assets/img.png","text":"MSI"},
  {"image":"assets/lenova3.png","text":"hp"},
  {"image":"assets/asus.png","text":"Asus"},
  {"image":"assets/lenova.jpg","text":"Mac"},

];
class headset

{
  String?image;
  String?text;
  headset(this.image,this.text);

}


List lis1=headsetdata.map((e) => headset(e["image"],e["text"] )).toList();

var headsetdata=[
  {"image":"assets/boat.png","text":"Boat"},
  {"image":"assets/airpods.png","text":"Airpods"},
  {"image":"assets/noise.png","text":"Noise"},
  {"image":"assets/realmebuds.png","text":"Realmebuds"},
  {"image":"assets/redmebuds.png","text":"Redme"},
  {"image":"assets/redmebuds.png","text":"Oneplus"},


];
class smartwatch

{
  String?image;
  String?text;
  smartwatch(this.image,this.text);

}


List lis2=smartwatchdata.map((e) =>  smartwatch(e["image"],e["text"] )).toList();

var smartwatchdata=[
  {"image":"assets/boatwatch.png","text":"Boatwatch"},
  {"image":"assets/iwatch.png","text":"iwatch"},
  {"image":"assets/noisewatch.png","text":"Noise"},
  {"image":"assets/realmewatch.png","text":"Realme"},
  {"image":"assets/samsungwatch.png","text":"Samsung"},
  {"image":"assets/oppowatch.png","text":"Oppo"},


];
class categories

{
  String?image;
  String?text;
  categories(this.image,this.text);

}


List lis3=categoriesdata.map((e) =>  categories(e["image"],e["text"] )).toList();

var categoriesdata=[
  {"image":"assets/foryou.png","text":"For You"},
  {"image":"assets/iwatch.png","text":"watchs"},
  {"image":"assets/noise.png","text":"Headset"},
  {"image":"assets/iphone.png","text":"Phones"},
  {"image":"assets/lenova3.png","text":"Laptop"},
  {"image":"assets/grocery.png","text":"Groceries"},


];