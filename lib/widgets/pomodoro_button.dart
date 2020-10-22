import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';

class PomodoroButton extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function onTap;

  const PomodoroButton({
    Key key,
    this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      splashColor: Colors.blueGrey[800],
      hoverColor: noteBoxRed,
      highlightColor: Color(0xff3e7aab),
      onPressed: onTap,
      icon: icon,
      label: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
