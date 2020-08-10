import 'package:flutter/material.dart';
import 'package:my_school_friend/data/dbHelper_task.dart';
import 'package:my_school_friend/models/task.dart';
import 'package:my_school_friend/screens/Task/addTask_screen.dart';
import 'package:my_school_friend/widgets/buttons.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TaskScreenState();
  }
}

class _TaskScreenState extends State {
  var dbTask = DbHelperTask();
  int taskCount = 0;
  List<Task> tasks;

  @override
  void initState() {
    getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ödev Tablosu"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.blueGrey,
                Colors.pink,
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
        onPressed: gotoTaskAdd,
        color1: Colors.blueGrey,
        color2: Colors.pink,
      ),
    );
  }

  ListView buildTasksList() {
    return ListView.builder(
      itemCount: taskCount,
      itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.blueGrey[300],
                  Colors.pink[300],
                ],
              ),
            ),
            child: ListTile(
              title: Text(this.tasks[position].name,style: TextStyle(color: Colors.white,fontSize: 18),),
              trailing: IconButton(
                icon: Icon(Icons.done_outline,color: Colors.white,),
                onPressed: () {
                  deleteTask(tasks[position].id,);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void getTasks() async {
    var tasksFeature = dbTask.getTasks();
    tasksFeature.then(
      (value) {
        setState(() {
          this.tasks = value;
          taskCount = value.length;
        });
      },
    );
  }

  void deleteTask(int id) async {
    await dbTask.delete(id);
    setState(() {
      getTasks();
    });
  }

  void gotoTaskAdd() async {
    bool result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddTaskScreen()));
    if (result != null) {
      if (result) {
        getTasks();
      }
    }
  }
}
