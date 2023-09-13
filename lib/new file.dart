import 'package:flutter/material.dart';


class new1 extends StatelessWidget {
  const new1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    TextEditingController cv =TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
               TextFormField(
                 controller: cv,
               ),
          ElevatedButton(onPressed: (){
            List a= [1,2,3];

            var d = a.reduce((value, element) => value < element ? value : element);

            cv.text = d.toString();

          }, child: Text("")),
          ],
      ),
    );
  }
}
