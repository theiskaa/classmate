import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';

class PomodoroHomeItem extends StatelessWidget {
  final Function onTap;

  const PomodoroHomeItem({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 330,
        decoration: BoxDecoration(
          color: pomodoroBoxBlue,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pomo.png',
                height: 105,
              ),
              SizedBox(width: 25),
              Text(
                'MiPomo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
