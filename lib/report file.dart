import 'package:flutter/material.dart';
class repf extends StatelessWidget {
  const repf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_circle_left_outlined),
        title: Text("MENU"),
      ),
      body: Column(

        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text("REPORT"),
          ),

              Card(
                child: ListTile(

                  leading: Icon(Icons.people),
                  title: Center(child: Text("report1")),
                  trailing: Icon(Icons.menu),
                ),

              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child:ListTile(
                  leading: Icon(Icons.people),
                  title: Center(child: Text("report2")),
                  trailing: Icon(Icons.menu),
                ),

              ),



          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right:300
            ),
            child: Text("HELP"),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Center(child: Text("log out")),
              trailing: Icon(Icons.arrow_forward),
            ),
          )

         ],
      ),
    );
  }
}
