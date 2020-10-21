import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
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
  final key = GlobalKey<FormState>();

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
                buildTitleText(),
                SizedBox(
                  height: 40,
                ),
                buildTaskField(),
                SizedBox(
                  height: 30,
                ),
                buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildButtons() {
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
          color: hwlBoxPurple,
          onPressed: saveTask,
        ),
      ],
    );
  }

  RichText buildTitleText() {
    return RichText(
      text: TextSpan(
        text: "Type Your ",
        style: TextStyle(
          color: Colors.black.withOpacity(.8),
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Home Work",
            style: TextStyle(color: hwlBoxPurple),
          ),
        ],
      ),
    );
  }

  Widget buildTaskField() {
    return Form(
      key: key,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "please type something";
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
          labelText: "Home Work",
          hintText: "Math no-3",
        ),
        controller: taskTxt,
      ),
    );
  }

  void saveTask() async {
    if (key.currentState.validate()) {
      await dbTask.insert(
        Task(
          name: taskTxt.text,
        ),
      );
      Navigator.pop(context, true);
    }
    
  }

  closeButton() {
    return Navigator.pop(context);
  }
}
