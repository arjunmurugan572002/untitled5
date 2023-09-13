import 'package:flutter/material.dart';
import 'package:untitled5/page%20jump.dart';


class mail extends StatelessWidget {
  const mail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _key = GlobalKey<FormState>();
     var hi='h';

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LOGIN PAGE")),
      ),
      body: Form(
        key: _key,

        child: Column(
          children: [
            SizedBox(height: 100,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  hintText: 'ENTER THE EMAIL',
                ),
                keyboardType: TextInputType.text,
                validator: (val)
                {

                  if(RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!)||val==null)
                    {
                        return"Enter the valid email";
                    }
                  return "enter the valid name";
                  },
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: 'password',
                 // border: OutlineInputBorder(),
                  hintText: "enter the password",
                ),
                keyboardType: TextInputType.number,
                maxLength: 10,
                validator: (value)
                {
                  if(value==null||value.isEmpty)
                    {
                      return 'enter the valid password';
                    }
                },
              ),
            ),

            SizedBox(height: 100,),


            Container(
              width: 100,
              child: ElevatedButton(onPressed: () {
                if (_key.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("OK VALID")));

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const newpage()),
                  );
                }
                //
                //
                 }, child: Text("ok")),
            )
      ]
        ),
      ),

    );
  }
}
