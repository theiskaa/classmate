class Task {
  int id;
  String name;


  Task({this.name,});

  Task.withid({this.id, this.name,});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = name;
    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  Task.fromObject(dynamic o) {
    this.id = o["id"];
    this.name = o["name"];
  }
}
