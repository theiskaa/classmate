import 'package:flutter/material.dart';
import 'package:my_school_friend/data/dbHelper_task.dart';
import 'package:my_school_friend/models/task.dart';
import 'package:my_school_friend/widgets/buttons.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddTaskScreenState();
  }
}

class _AddTaskScreenState extends State {
  var dbTask = DbHelperTask();
  var taskTxt = TextEditingController();

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
                    text: "Ödevini ",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Yaz",
                        style: TextStyle(color: Colors.pink),
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
                        Colors.pink[300],
                        Colors.pink[700],
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                buildTaskField(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TaskButton(
                      title: "Geri",
                      color1: Colors.grey,
                      color2: Colors.pinkAccent,
                      onPressed: closeButton,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TaskButton(
                      title: "Kaydet",
                      color1: Colors.blueGrey,
                      color2: Colors.pink,
                      onPressed: saveTask,
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
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

  Widget buildTaskField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.pink,
          ),
        ),
        enabled: true,
        labelText: "Ödev adı",
        hintText: "Matematik sayfa 133",
      ),
      controller: taskTxt,
    );
  }

  void saveTask() async {
    await dbTask.insert(
      Task(
        name: taskTxt.text,
      ),
    );
    Navigator.pop(context, true);
  }

  closeButton() {
    return Navigator.pop(context);
  }
}
