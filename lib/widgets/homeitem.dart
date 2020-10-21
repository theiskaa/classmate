import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String image;
  final Color backGroundColor;
  final double imageSize;
  final Function onTap;

  const HomeItem({
    Key key,
    this.backGroundColor,
    this.image,
    this.imageSize,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          color: backGroundColor,
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Image.asset(
            image,
            height: imageSize,
          ),
        ),
      ),
    );
  }
}
