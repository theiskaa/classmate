import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
import 'package:my_school_friend/data/dbHelper_book.dart';
import 'package:my_school_friend/models/book.dart';
import 'package:my_school_friend/widgets/buttons.dart';

class BookEditScreen extends StatefulWidget {
  Book book;
  BookEditScreen(this.book);

  @override
  State<StatefulWidget> createState() {
    return _BookEditScreenState(book);
  }
}

class _BookEditScreenState extends State {
  Book book;

  _BookEditScreenState(this.book);

  var dbBook = DbHelperBook();
  var bookTxt1 = TextEditingController();
  var bookTxt2 = TextEditingController();

  @override
  void initState() {
    bookTxt1.text = book.name;
    bookTxt2.text = book.description;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                buildRichText(),
                
                SizedBox(
                  height: 40,
                ),
                buildBookField1(),
                SizedBox(
                  height: 10,
                ),
                buildBookField2(),
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
                    onPressed: editBook,
                  ),
                ],
              );
  }

  RichText buildRichText() {
    return RichText(
      text: TextSpan(
        text: "Edit ",
        style: TextStyle(
          color: Colors.black.withOpacity(.8),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "your ",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
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
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.pink,
          ),
        ),
        enabled: true,
        labelText: "Kitap adı",
      ),
      controller: bookTxt1,
    );
  }

  Widget buildBookField2() {
    return TextField(
      maxLines: 8,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.pink,
          ),
        ),
        hintText: "Kitap özeti",
      ),
      controller: bookTxt2,
    );
  }

  void editBook() async {
    await dbBook.update(
      Book.withId(
        id: book.id,
        name: bookTxt1.text,
        description: bookTxt2.text,
      ),
    );
    Navigator.pop(context, true);
  }

  closeButton() {
    return Navigator.pop(context);
  }
}
