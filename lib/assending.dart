
import 'package:flutter/material.dart';
import 'package:untitled5/amazonfile.dart';
class assending extends StatefulWidget {
  const assending({super.key});

  @override
  State<assending> createState() => _assendingState();
}

class _assendingState extends State<assending> {
  final count=TextEditingController();
  final element=TextEditingController();
  var li=[];
  int num=0;
  int low=0;
  int large=0;
  void display() {
    num = int.parse(count.text);
    setState(() {
      if (li.length < num) {
        li.add(int.parse(element.text));
        element.text = "";
      }
      else {
        var snackBar = SnackBar(content: Text("Not Valid"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }
  void calc(){
    setState(() {
      li.sort();
      low=li.reduce((value,element)=>value < element ? value : element);
    large=li.reduce((value,element)=>value >element ? value : element);
    });
  }

void Ascending(){
  setState(() {
    li.sort();
  });
}
void lessthen(){
    setState(() {
      li = li.where((element) => element < 5).toList();
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Count",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 70,
                    child: TextFormField(
                      controller: count,
                      decoration:InputDecoration(

                        border: OutlineInputBorder()
                      ),

                    ),
                  ),
                ),
                ElevatedButton(onPressed: lessthen , child:Text("Less than 5"))
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Element",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 70,
                    child: TextFormField(
                      controller: element,
                      decoration:InputDecoration(

                          border: OutlineInputBorder(),

                      ),

                    ),
                  ),
                ),
             IconButton(onPressed: display, icon:Icon(Icons.plus_one_outlined))
              ],
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed:(){
              Ascending();
            } , child: Text("Ascending")),
            SizedBox(height: 40,),
            Container(
              height: 200,
              width: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: li.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${li[index]}"),


                  );
                  SizedBox(
                    height: 36,
                  );
                },
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: calc, child:Text("Calc")),


            SizedBox(height: 30,),
            Text("Min no=;$low",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Text("Max no=$large",style: TextStyle(fontWeight:FontWeight.bold),),
            SizedBox(height: 30,),

            ElevatedButton(onPressed: (){
              element.text="";

            }, child:Text("Reset")),
          ],
        ),
      ),
    );
  }
}
