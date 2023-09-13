import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled5/add%20cart%20page.dart';
import 'package:untitled5/amazonfile.dart';
import 'package:untitled5/categories.dart';
class amzpro1 extends StatefulWidget {
  const amzpro1({Key? key}) : super(key: key);

  @override
  State<amzpro1> createState() => _amzpro1State();
}

class _amzpro1State extends State<amzpro1> {
  String dropdownvalue = "Qty:1";

  // List of items in our dropdown menu
  var nums = [

    'Qty:1',
    'Qty:2',
    'Qty:3',
    'Qty:4',
    'Qty:5',

  ];
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
                MaterialPageRoute(builder: (context) => const category()),
              );

            },child: Icon(Icons.arrow_back)),
        title: Container(

          height: 35,
          width: 250,
          decoration: BoxDecoration(
            // border: Border.all(),
            //borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              hintText: "enter the product name",
              suffixIcon: Icon(Icons.cameraswitch),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon((Icons.mic_none),color: Colors.black,size: 30,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 400,
              //color:  Colors.black,
              child: Row(
                children: [
                  Text("IIISI", style: TextStyle(fontSize:40,fontStyle: FontStyle.italic)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" MSI modern series laptop at \n ₹58,990.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      //border:Border.all(),
                      image: DecorationImage(
                        image: AssetImage('assets/img_1.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.zero,
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Container(
                  height: 500,
                  width: 400,
                  //color: Colors.blue,
                  //  color: Colors.cyanAccent,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 250,
                                  aspectRatio: 3/2,
                                  viewportFraction: 0.9,
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
                                itemBuilder: (BuildContext context, int itemIndex, int Index) =>
                                    Container(
                                      height: 150,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:AssetImage("assets/lenova2"
                                                ".png"),fit: BoxFit.fill

                                        ),

                                      ),
                                    ),
                              ),
                            ),
                          ),
                          new Positioned(
                              left: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(color: Colors.red,border: Border.all(),shape: BoxShape.circle),
                                  child: Column(
                                    children: [
                                      Text("15%",style: TextStyle(color: Colors.white),),
                                      Text("off",style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                              )),
                          Positioned(
                              right: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.share),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 270),
                            child: Icon(Icons.heart_broken_outlined,size: 35,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:30),
                            child: Icon(Icons.bookmark_border,size: 35,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Brand: LENOVA",style: TextStyle(color: Colors.blue,fontSize: 20),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:70,),
                            child: Text('4.3'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              itemSize: 17.0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,

                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          Text("173",style: TextStyle(color: Colors.lightBlue),),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("HP Laptop 15s, 12th Gen Intel Core i5-1235U, 15.6-inch (39.6 cm), FHD, 8GB DDR4, 512GB SSD, Intel Iris Xe Graphics, Backlit KB, Thin & Light (Win 11, MSO 2021, Silver, 1.69 kg), fq5111TU",style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                      )
                    ],
                  )

              ),
            ),
            Card(
              child: Container(
                height: 250,
                width: 600,
                // color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Container(
                        height: 35,
                        width: 130,

                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(child: Text('Deal of the Day',style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold ),)),


                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: RichText(
                            text: const TextSpan(
                              text: '-26% ',style: TextStyle(fontSize: 30),
                              // style: DefaultTextStyle.of(context).style,

                            ),
                          ),
                        ),
                        Text("₹",style: TextStyle(fontFeatures: [FontFeature.superscripts()]),),
                        Text('28,000',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Colors.black)),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: RichText(text: TextSpan(
                            text: "M.R.P . : ",style: TextStyle(fontSize: 19,color: Colors.black45),
                            children: const <TextSpan>[
                              TextSpan(text: "₹38,990",style: TextStyle(fontSize: 20,color: Colors.black54,decoration: TextDecoration.lineThrough),),
                            ]
                        ))
                    ),
                    RichText(text: TextSpan(
                      text: ".",style:TextStyle(fontSize: 50),
                      children:const <TextSpan>[
                        TextSpan( text: "  EMI",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextSpan(text: " from ₹1,385. No Cost EMI available.",style: TextStyle(fontSize: 16,color: Colors.black),),
                        TextSpan(text: "EMI\n  options",style: TextStyle(fontSize: 18,color:Colors.teal)),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(right: 175),
                      child: Text(" Inclusive of all taxes",style: TextStyle(fontSize: 18,color: Colors.black,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                height: 600,
                width: 470,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 190,top: 10),
                      child: Text(" Total : ₹ 28,990",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: RichText(text: TextSpan(
                          text: "  FREE delivery",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.teal),
                          children:const  <TextSpan>[
                            TextSpan(text: " Friday, 14 July.",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: " Details",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16,color: Colors.teal)),
                            TextSpan(text: "\n\n  Or fastest delivery ",style: TextStyle(color: Colors.black87,fontSize: 16)),
                            TextSpan(text: "Tomorrow, 13 july.",style: (TextStyle( fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black))),
                            TextSpan(text: "Order\n  within ",style: TextStyle(color: Colors.black87,fontSize: 16)),
                            TextSpan(text: " 5 hrs 48 mins. ",style: TextStyle(fontSize: 18,color: Colors.green)),
                            TextSpan(text: "Details",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.teal)),
                          ]
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9 ,top: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(" Delivery to ARJUN - Tiruppur 641603",style: TextStyle(fontSize: 18,color: Colors.teal),),],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 280),
                      child: Text("In stock",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 280),
                      child: DropdownButton(

                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: nums.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: ()
                        {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const cart()),
                          );

                        },
                        child: Container(
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.yellowAccent,
                          ),
                          child: Center(child: Text(" Add to Cart",style: TextStyle(fontSize: 25),)),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange,
                        ),
                        child: Center(child: Text(" Buy Now",style: TextStyle(fontSize: 25),)),

                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(Icons.lock),
                        ),
                        Text(" Secure transaction",style: TextStyle(fontSize: 18,color: Colors.teal),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 7,top: 20),
                      child: RichText(text: TextSpan(
                          text: " Sold by ",style: TextStyle( fontSize: 17,color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(text:"Appario Retail Private Ltd",style: TextStyle(fontSize: 17,color: Colors.teal) ),
                            TextSpan(text: " and",style: TextStyle(fontSize: 17,color: Colors.black)),
                            TextSpan(text: " Fulfilled\n by Amazon.",style: TextStyle(fontSize: 17,color: Colors.teal)),
                            TextSpan(text: "\n \n Gift - wrap available.",style: TextStyle(fontSize: 17,color: Colors.black)),
                            TextSpan(text: "\n \n Add to Wish List",style: TextStyle(fontSize: 17,color: Colors.teal)),
                          ]
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
