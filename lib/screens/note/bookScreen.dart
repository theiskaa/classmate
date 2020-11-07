import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:my_school_friend/core/colors.dart';
import 'package:my_school_friend/data/dbHelper_book.dart';
import 'package:my_school_friend/localization/app_localization.dart';
import 'package:my_school_friend/models/book.dart';
import 'package:my_school_friend/screens/note/addBook_screen.dart';
import 'package:my_school_friend/screens/note/bookEdit_screen.dart';
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
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildTasksList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: noteBoxRed,
        onPressed: goToBookAdd,
        child: Icon(Icons.add),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: Text(
        AppLocalizations.of(context).translate("notes_appbar"),
      ),
      backgroundColor: noteBoxRed,
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
                backgroundColor: Colors.black.withOpacity(0.8),
                trailingIcon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                title: Text(
                  "${AppLocalizations.of(context).translate("edit_button")}",
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
                backgroundColor: noteBoxRed,
                trailingIcon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                title: Text(
                  "${AppLocalizations.of(context).translate("delete_button")}",
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
                  color: noteBoxRed.withOpacity(.9)),
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
