import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
import 'package:my_school_friend/data/dbHelper_book.dart';
import 'package:my_school_friend/models/book.dart';
import 'package:my_school_friend/widgets/buttons.dart';

class AddBookScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddBookScreenState();
  }
}

class _AddBookScreenState extends State {
  var dbBook = DbHelperBook();
  var bookTxt1 = TextEditingController();
  var bookTxt2 = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                buildRichText(),
                SizedBox(
                  height: 40,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      buildBookField1(),
                      SizedBox(
                        height: 10,
                      ),
                      buildBookField2(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                buttons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TaskButton(
          title: "cancel",
          color: Colors.black.withOpacity(.8),
          onPressed: closeButton,
        ),
        SizedBox(
          width: 15,
        ),
        TaskButton(
          title: "Save",
          color: noteBoxRed,
          onPressed: saveBook,
        ),
      ],
    );
  }

  RichText buildRichText() {
    return RichText(
      text: TextSpan(
        text: "Type ",
        style: TextStyle(
          color: Colors.black.withOpacity(.8),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Note ",
            style: TextStyle(color: noteBoxRed),
          ),
          TextSpan(
            text: "or ",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
          TextSpan(
            text: "Quote",
            style: TextStyle(color: noteBoxRed),
          ),
        ],
      ),
    );
  }

  Widget buildBookField1() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return "please type title";
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.pink,
          ),
        ),
        enabled: true,
        labelText: "title",
      ),
      controller: bookTxt1,
    );
  }

  Widget buildBookField2() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return "type something!";
        }
      },
      maxLines: 8,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.pink,
          ),
        ),
        labelText: "Notes",
        hintText: " Bla bla bla bla",
      ),
      controller: bookTxt2,
    );
  }

  void saveBook() async {
    if (formKey.currentState.validate()) {
      await dbBook.insert(
        Book(
          name: bookTxt1.text,
          description: bookTxt2.text,
        ),
      );
      Navigator.pop(context, true);
    }
  }

  closeButton() {
    return Navigator.pop(context);
  }
}
