import 'package:my_school_friend/models/book.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelperBook {
  Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    String dbPath = join(await getDatabasesPath(), "bookdata.db");
    var bookDb = await openDatabase(dbPath, version: 1, onCreate: createDb);
    return bookDb;
  }

  void createDb(Database db, int version) async {
    await db.execute(
      "Create table books(id integer primary key, name text, description text)",
    );
  }

  Future<List<Book>> getBooks() async {
    Database db = await this.db;
    var result = await db.query("books");
    return List.generate(
      result.length,
      (i) {
        return Book.fromObject(result[i]);
      },
    );
  }

  Future<void> insert(Book book) async {
    Database db = await this.db;
    var result = await db.insert("books", book.toMap());
    return result;
  }

  Future<void> delete(int id) async {
    Database db = await this.db;
    var result = await db.rawDelete("delete from books where id = $id");
    return result;
  }

  Future<void> update(Book book) async {
    Database db = await this.db;
    var result = await db.update(
      "books",
      book.toMap(),
      where: "id=?",
      whereArgs: [book.id],
    );
    return result;
  }
}
