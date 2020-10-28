import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
import 'package:my_school_friend/screens/artworker/artworker_screen.dart';
import 'package:my_school_friend/screens/calculator/calculator_screen.dart';
import 'package:my_school_friend/screens/chemichal%20table/chemichal_table_screen.dart';
import 'package:my_school_friend/widgets/homeitem.dart';

class DonwHomeItemList extends StatelessWidget {
  const DonwHomeItemList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 10),
          HomeItem(
            backGroundColor: listItemsBlueGrey,
            image: 'assets/images/paint.png',
            imageSize: 122,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Artworker(),
              ),
            ),
          ),
          SizedBox(width: 20),
          HomeItem(
            backGroundColor: listItemsBlueGrey,
            image: 'assets/images/periodic.png',
            imageSize: 135,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChemichalTableScreen(),
              ),
            ),
          ),
          SizedBox(width: 20),
          HomeItem(
            backGroundColor: listItemsBlueGrey,
            image: 'assets/images/calculator.png',
            imageSize: 168,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CaluclatorScreen(),
              ),
            ),
          ),
          SizedBox(width: 10),
          HomeItem(
            backGroundColor: listItemsBlueGrey,
            image: 'assets/images/exam.png',
            imageSize: 150,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CaluclatorScreen(),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
