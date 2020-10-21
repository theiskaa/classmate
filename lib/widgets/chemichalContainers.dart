import 'package:flutter/material.dart';

class ChemichalContainer extends StatelessWidget {
  final String t1;
  final String t2;
  final String tGrup;
  final String tPeriot;
  final Function onPress;
  final Color color;
  final Color textColor;
  final Color grupAndPeriotColor;
  final Border borderr;
  final BorderRadius borderRadius;

  ChemichalContainer({
    this.t1,
    this.t2,
    this.tGrup,
    this.tPeriot,
    this.onPress,
    this.color,
    this.textColor,
    this.grupAndPeriotColor,
    this.borderr,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Material(
        child: GestureDetector(
          onTap: onPress,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: color,
              border: borderr,
            ),
            padding: EdgeInsets.only(bottom: 8, top: 8),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tGrup,
                    style: TextStyle(
                      color: grupAndPeriotColor,
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 6,
                      right: 6,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          t1,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          t2,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    tPeriot,
                    style: TextStyle(
                      color: grupAndPeriotColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColorMeaningsContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;
  final Color textColor;

  ColorMeaningsContainer({
    this.height,
    this.width,
    this.color,
    this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
