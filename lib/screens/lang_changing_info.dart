import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';

class LangChangingInfo extends StatelessWidget {
  const LangChangingInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: [],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(
        "How to change app language",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
