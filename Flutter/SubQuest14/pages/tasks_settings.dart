import 'package:flutter/material.dart';
import '../SubQuest C 14.dart';

class TasksSettings extends StatefulWidget {
  const TasksSettings({super.key});

  @override
  State<StatefulWidget> createState() => TasksSettingsState();

}

class TasksSettingsState extends State<TasksSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Manage Tasks"),
              ),
              ListTile(
                leading: Icon(Icons.open_in_new),
                title: Text('Create New Task'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text("Manage Tasks"),
                dense: true,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Manage Tags"),
              ),
              ListTile(
                leading: Icon(Icons.open_in_new),
                title: Text('Create New Tag'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text("Manage Tags"),
                dense: true,
              ),
            ],
          ),
        ]
      )
    );
  }
}