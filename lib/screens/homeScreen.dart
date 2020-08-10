import 'package:flutter/material.dart';
import 'package:my_school_friend/screens/Book/bookScreen.dart';
import 'package:my_school_friend/screens/Task/task_screen.dart';
import 'package:my_school_friend/screens/calculator/calculator_screen.dart';
import 'package:my_school_friend/screens/chemichal%20table/chemichal_table_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ana Ekran",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        //
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.blueGrey[800],
                Colors.grey[900],
              ],
            ),
          ),
        ),
        //
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.blueGrey, Colors.pink],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 250,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('assets/homework.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.blueGrey[800],
                      Colors.grey[900],
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 250,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset('assets/book.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CaluclatorScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.blueGrey[800],
                      Colors.grey[900],
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 250,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('assets/calculator.png'),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ChemichalTableScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.blueGrey[800],
                      Colors.red,
                      Colors.lightBlue[300],
                      Colors.grey[400],
                      Colors.lightGreen,
                      Colors.brown[300],
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 250,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/chemical.png'),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Text(
                "By WebbPath",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
