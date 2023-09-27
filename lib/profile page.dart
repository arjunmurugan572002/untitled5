import 'package:flutter/material.dart';
import 'package:untitled5/Login.dart';
import 'package:untitled5/add%20cart%20page.dart';
import 'package:untitled5/amazon%20file%201.dart';
import 'package:untitled5/amazonfile.dart';
import 'package:untitled5/categories.dart';
import 'package:untitled5/edit%20profile.dart';
import 'package:untitled5/notification.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.teal,
  leading: GestureDetector(
      onTap: ()
      {

        Navigator.pop(context);


      },
      child: Icon(Icons.arrow_back)),
  title: Padding(
    padding: const EdgeInsets.only(left: 80),
    child: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
  ),
),

      body:SingleChildScrollView(
        child: Column(
          children: [
               SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Container(
                height: 120,
                width: 150,
                decoration: BoxDecoration(
                  //border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/vijay.png"),
                    fit: BoxFit.fill
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text("Vijay@gmail.com",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
        SizedBox(height: 20,),
        InkWell(
          child: GestureDetector(
            onTap: ()
            {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const edit()),
              );

            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text("Edit Profile")),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
        ),
          SizedBox(height: 20,),
            GestureDetector(
              onTap: ()
              {


                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const cart()),
                );

              },
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.card_travel),
                  title: Center(child: Text("Orders")),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),

              ),
            ),
            SizedBox(height: 20,),
            Card(
              child: ListTile(
                leading: Icon(Icons.location_on_rounded),
                title: Center(child: Text("Address")),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),

            ),
            SizedBox(height: 20,),
            Card(
              child: ListTile(
                leading: Icon(Icons.edit_note_sharp),
                title: Center(child: Text("Clear History")),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),

            ),
            SizedBox(height: 20,),
             GestureDetector(
               onTap: ()
               {


                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const notify()),
                 );

               },
               child: Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_active),
                  title: Center(child: Text("Notification")),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),

            ),
             ),
            SizedBox(height: 20,),
            Card(
              child: ListTile(
                leading: Icon(Icons.compare_arrows_sharp),
                title: Center(child: GestureDetector(
                    onTap: ()
                    {


                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const pop1()),
                        );

                    },child: Text("Log Out"))),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

