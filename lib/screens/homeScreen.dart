import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
import 'package:my_school_friend/screens/donwhomeitem_list.dart';
import 'package:my_school_friend/screens/note/bookScreen.dart';
import 'package:my_school_friend/screens/Task/task_screen.dart';
import 'package:my_school_friend/screens/pomodoro/mipomo_screen.dart';
import 'package:my_school_friend/widgets/drawer.dart';
import 'package:my_school_friend/widgets/pomodoroHomeItem.dart';
import 'package:my_school_friend/widgets/homeitem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: buildAppBar(),
      body: buildBody(context),
      drawer: CustomDrawer(),
    );
  }

  SingleChildScrollView buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        children: [
          firstHomeitems(context),
          SizedBox(height: 20),
          PomodoroHomeItem(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MiPomo(),
              ),
            ),
          ),
          SizedBox(height: 30),
          DonwHomeItemList(),
        ],
      ),
    );
  }

  Widget firstHomeitems(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 230,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          HomeItem(
            backGroundColor: hwlBoxPurple,
            image: 'assets/images/list.png',
            imageSize: 100,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskScreen(),
                ),
              );
            },
          ),
          SizedBox(width: 15),
          HomeItem(
            backGroundColor: noteBoxRed,
            image: 'assets/images/note.png',
            imageSize: 100,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/wsIcon.png',
          height: 23,
        ),
        onPressed: () => scaffoldKey.currentState.openDrawer(),
      ),
      elevation: 0,
      centerTitle: true,
      title: Text(
        "classmate",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
