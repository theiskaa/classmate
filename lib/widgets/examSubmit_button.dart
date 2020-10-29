import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';

class ExamSubmitButton extends StatelessWidget {
  final Function onTap;

  const ExamSubmitButton({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
            color: noteBoxRed,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: noteBoxRed,
                blurRadius: 8,
              )
            ]),
        child: Center(
          child: Text(
            'Submit',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
