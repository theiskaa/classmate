import 'package:flutter/material.dart';
import 'package:my_school_friend/localization/app_localization.dart';

class LangChangingInfo extends StatelessWidget {
  const LangChangingInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850].withOpacity(0.9),
      appBar: buildAppBar(context),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'classmate',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            height: 5,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '${AppLocalizations.of(context).translate("how_to_change_app_lang")}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(.9),
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: Colors.grey[850].withOpacity(0.9),
      centerTitle: true,
      title: Text(
        "${AppLocalizations.of(context).translate("htcapl_title")}",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
