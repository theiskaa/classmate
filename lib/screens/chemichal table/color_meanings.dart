import 'package:flutter/material.dart';
import 'package:my_school_friend/widgets/chemichalContainers.dart';

class ColorMeanings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        title: Text(
          "Renk Anlamları",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        flexibleSpace: Container(
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.red[400 ],
                text: "Alkali Metaller",
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.deepOrange[200],
                text: "Toprak Alkali Metaller",
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.yellow,
                text: "Halojenler",
              ),
              SizedBox(height: 20,),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.lightBlue[300],
                text: "Soygazlar",
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.grey[400],
                text: "Metaller",
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.brown[200],
                text: "Yarı Metaller",
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.red[100],
                text: "Geçiş Metalleri",
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.greenAccent,
                text: "Ametaller",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
