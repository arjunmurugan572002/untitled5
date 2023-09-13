import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(Agenum());
}

class Agenum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age, Number List, and Sorting',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AgeNumberListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AgeNumberListScreen extends StatefulWidget {
  @override
  _AgeNumberListScreenState createState() => _AgeNumberListScreenState();
}

class _AgeNumberListScreenState extends State<AgeNumberListScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  String value = "tedt";
  TextEditingController _listLengthController = TextEditingController();

  String _age = '';
  List<int> _numberList = [];
  List<int> _numbersLessThanFive = [];
  int? _smallestNumber;
  int? _largestNumber;
  List<int> _sortedNumbers = [];

  void calculateAge() {
    setState(() {
      value = "tweses";
    });
    String name = _nameController.text;
    String dobString = _dobController.text;


    DateTime dob = DateTime.parse(dobString);
    print(dob);
    DateTime now = DateTime.now();
    print(now);
    int age = now.year - dob.year;
    print(age);
    if (now.month < dob.month || (now.month == dob.month && now.day < dob.day)) {
      age--;
    }

    //setState(() {
    _age = 'Hello, $name! You are $age years old.';
    // });
  }

  void generateNumberList() {
    int listLength = int.tryParse(_listLengthController.text) ?? 0;
    _numberList = List<int>.generate(listLength, (index) => index + 1);
  }

  void checkNumbersLessThanFive() {
    _numbersLessThanFive = _numberList.where((number) => number < 5).toList();
  }

  void findSmallestAndLargestNumber() {
    if (_numberList.isNotEmpty) {
      _smallestNumber = _numberList.reduce(min);
      _largestNumber = _numberList.reduce(max);
    } else {
      _smallestNumber = null;
      _largestNumber = null;
    }
  }

  void sortNumbers() {
    _sortedNumbers = List.from(_numberList);
    _sortedNumbers.sort();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age, Number List, and Sorting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Age Calculator',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Enter your name:'),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
            Text(value),
            SizedBox(height: 8.0),
            Text('Enter your date of birth (YYYY-MM-DD):'),
            TextField(
              controller: _dobController,
              decoration: InputDecoration(
                hintText: 'Date of Birth',
              ),
            ),
            ElevatedButton(
              onPressed: calculateAge,
              child: Text('Calculate Age'),
            ),
            SizedBox(height: 16.0),
            Text(
              _age,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 24.0),
            Text(
              'Number List and Sorting',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Enter the number of elements for the list (numbers only):'),
            TextField(
              controller: _listLengthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'List Length',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                generateNumberList();
                checkNumbersLessThanFive();
                findSmallestAndLargestNumber();
                sortNumbers();
                setState(() {});
              },
              child: Text('Process List'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Numbers Less Than 5: $_numbersLessThanFive',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Smallest Number: $_smallestNumber',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Largest Number: $_largestNumber',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Sorted Numbers: $_sortedNumbers',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}