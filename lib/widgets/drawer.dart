import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(top: 50),
        color: Color(0xff2D2D2D),
        child: Column(
          children: [
            buildSettingsTitle(),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Change theme',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white.withOpacity(.9),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Select language',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white.withOpacity(.9),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Info',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white.withOpacity(.9),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildSettingsTitle() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
