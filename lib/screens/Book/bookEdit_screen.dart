import 'package:flutter/material.dart';
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
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 10,
                  width: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Colors.blueGrey[400],
                        Colors.blueGrey[800],
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                RichText(
                  text: TextSpan(
                    text: "Kitap ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Özetini ",
                        style: TextStyle(
                          color: Colors.blueGrey[800],
                        ),
                      ),
                      TextSpan(
                        text: "Düzenle",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  height: 10,
                  width: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Colors.grey[500],
                        Colors.grey[800],
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TaskButton(
                      title: "Geri",
                      color1: Colors.grey,
                      color2: Colors.blueGrey,
                      onPressed: closeButton,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TaskButton(
                      title: "Kaydet",
                      color1: Colors.blueGrey[800],
                      color2: Colors.grey[900],
                      onPressed: editBook,
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "By WebbPath",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
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
