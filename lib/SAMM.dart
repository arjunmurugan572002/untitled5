import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Samm extends StatefulWidget {
  const Samm({Key? key}) : super(key: key);

  @override
  State<Samm> createState() => _SammState();
}

class _SammState extends State<Samm> {
  TextEditingController ab = TextEditingController();

  List lis = [];
   var max="" ;
  @override

  // Function to sort the list in ascending order
  void sortList() {
    setState(() {
       lis.sort();

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: 200,
            //width: 300,
            color: Colors.cyan,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lisa.length,
                itemBuilder: (BuildContext con,index)
                {
                   return Column(
                                     children: [
                                       Container(
                                         height: 100,
                                           width: 100,
                                           child: Image.asset(lisa[index].image)
                                       ),
                                       Text(lisa[index].text),
                                     ],
                                   );
                }
            ),
          )


          // Container(
          //   height: 200,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //       itemCount: lis.length,
          //       itemBuilder: (BuildContext con, index)
          //           {
          //             return Column(
          //               children: [
          //                 Container(
          //                   height: 100,
          //                     width: 100,
          //                     //child: Image.asset(lis[index].image)
          //                 ),
          //                 Text(lis[index].text),
          //               ],
          //             );
          //           }
          //   ),
          // )
          // SizedBox(height: 100,),
          // Container(
          //     height:40,
          //     width: 200,
          //     decoration: BoxDecoration(
          //       border: Border.all()
          //     ),
          //     child: TextFormField(controller: ab,)),
          //
          // SizedBox(height: 100,),
          // ElevatedButton(
          //   onPressed: () {
          //
          //
          //
          //     setState(() {
          //       lis.add(ab.text);
          //     });
          //   },
          //   child: Text("OK"),
          // ),
          // SizedBox(height: 100,),
          // ElevatedButton(
          //   onPressed: sortList, // Call the function to sort the list
          //   child: Text("Ascending"),
          // ),
          // SizedBox(height: 100,),
          // ElevatedButton(onPressed: (){
          //   setState(() {
          //     lis.sort((a, b) => b.compareTo(a));
          //   });
          // }, child: Text("decending")),
          // SizedBox(height: 10,),
          // ElevatedButton(onPressed: (){
          //   setState(() {
          //
          //   int max=lis.reduce((value, element) => value < element ? value : element);
          //   });
          // },
          //  child: Text("maxnumber")),
          // SizedBox(height: 20),
          // ElevatedButton(onPressed: (){
          //   setState(() {
          //
          //     var e = lis;
          //
          //     var t = lis.reduce((value, element) => value > element ? value :element);
          //     // String min=lis.reduce((value, element) => value > element ? value : element);
          //   });
          // }, child: Text("min")),
          //
          //
          // SizedBox(height: 50),
          // Container(
          //   height: 150,
          //   color: Colors.cyanAccent,
          //   child: ListView.builder(
          //     itemCount: lis.length,
          //     itemBuilder: (BuildContext con, int index) {
          //       return Text(lis[index]);
          //     },
          //   ),
          // ),
          // Text("maximum:$max"),
        ],
      ),
    );
  }
}




class Model
{

  String? image;
  String? text;


  Model(this.image,this.text);
}


List lisa = modelData.map((e) => Model(e["image"], e["text"])).toList();


var modelData = [
  {"image":"assets/abc.jpg","text":"hi"},
  {"image":"assets/nature.jpg","text":"hi2"},
  {"image":"assets/abc.jpg","text":"hi"},
  {"image":"assets/abc.jpg","text":"hi"},


];


///