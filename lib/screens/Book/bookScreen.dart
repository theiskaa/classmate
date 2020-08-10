import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:my_school_friend/data/dbHelper_book.dart';
import 'package:my_school_friend/models/book.dart';
import 'package:my_school_friend/screens/Book/addBook_screen.dart';
import 'package:my_school_friend/screens/Book/bookEdit_screen.dart';
import 'package:my_school_friend/widgets/buttons.dart';

class BookScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BookScreenState();
  }
}

class _BookScreenState extends State {
  var dbBook = DbHelperBook();
  int taskCount = 0;
  List<Book> books;

  @override
  void initState() {
    getBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kitap Özetlerim"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.blueGrey[800],
                Colors.grey[900],
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildTasksList(),
      ),
      floatingActionButton: FABforTask(
        onPressed: goToBookAdd,
        color1: Colors.blueGrey[500],
        color2: Colors.grey[600],
      ),
    );
  }

  ListView buildTasksList() {
    return ListView.builder(
      itemCount: taskCount,
      itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FocusedMenuHolder(
            onPressed: () {},
            menuItems: [
              FocusedMenuItem(
                backgroundColor: Colors.grey[500],
                trailingIcon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                title: Text(
                  "Düzenle",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  gotoBookEdit(books[position]);
                },
              ),
              FocusedMenuItem(
                backgroundColor: Colors.red[900], 
                trailingIcon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                title: Text(
                  "Sil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => deleteBook(books[position].id),
              ),
            ],
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Colors.blueGrey[800],
                    Colors.grey[900],
                  ],
                ),
              ),
              child: ListTile(
                title: Text(
                  this.books[position].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  this.books[position].description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void getBooks() async {
    var tasksFeature = dbBook.getBooks();
    tasksFeature.then(
      (value) {
        setState(() {
          this.books = value;
          taskCount = value.length;
        });
      },
    );
  }

  void deleteBook(int id) async {
    await dbBook.delete(id);
    setState(() {
      getBooks();
    });
  }

  void goToBookAdd() async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddBookScreen(),
      ),
    );
    if (result != null) {
      if (result) {
        getBooks();
      }
    }
  }

  void gotoBookEdit(Book book) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookEditScreen(book),
      ),
    );
    if (result != null) {
      if (result) {
        getBooks();
      }
    }
  }
}
