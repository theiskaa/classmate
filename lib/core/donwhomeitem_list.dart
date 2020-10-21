import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
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
            onTap: () {},
          ),
          SizedBox(width: 20),
          HomeItem(
            backGroundColor: listItemsBlueGrey,
            image: 'assets/images/periodic.png',
            imageSize: 135,
            onTap: () {},
          ),
          SizedBox(width: 20),
          HomeItem(
            backGroundColor: listItemsBlueGrey,
            image: 'assets/images/calculator.png',
            imageSize: 168,
            onTap: () {},
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
