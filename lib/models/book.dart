class Book {
  int id;
  String name;
  String description;

  Book({this.name, this.description});
  Book.withId({this.id, this.name, this.description});

  Book.fromObject(dynamic o) {
    this.id = o['id'];
    this.name = o['name'];
    this.description = o['description'];
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['description'] = description;

    return map;
  }
}
