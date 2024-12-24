import 'package:flutter/material.dart';
import '../SubQuest C 14.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<StatefulWidget> createState() => NewTaskState();

}

class NewTaskState extends State<NewTask> {
  String _selectedValue = "Working";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Task"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              style: TextStyle(fontSize: 15.0),
              decoration: InputDecoration(
                labelText: 'Title',
                // prefixIcon: Icon(Icons.account_box),
                border: OutlineInputBorder(),
                hintText: "Title of the New Task",
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              // onSubmitted: _printInputText,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              minLines: 3,
              maxLines: 8,
              style: TextStyle(fontSize: 15.0),
              decoration: InputDecoration(
                labelText: 'Description',
                // prefixIcon: Icon(Icons.account_box),
                border: OutlineInputBorder(),
                hintText: "Description of the New Task",
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              // onSubmitted: _printInputText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: DropdownButton<String>(
              isExpanded: true,
              value: _selectedValue,
              items: const [
                DropdownMenuItem(
                  value: "Working",
                  child: Row(
                    children: [
                      Icon(Icons.corporate_fare, color: Colors.blueGrey,),
                      Text("   Working"),
                    ],
                  )),
                DropdownMenuItem(
                  value: "Learning",
                  child: Row(
                    children: [
                      Icon(Icons.school, color: Colors.blueGrey,),
                      Text("   Learning"),
                    ],
                  )),
                  DropdownMenuItem(
                  value: "Recreation",
                  child: Row(
                    children: [
                      Icon(Icons.music_note, color: Colors.blueGrey,),
                      Text("   Recreation"),
                    ],
                  )),
              ],
              onChanged: (String? newValue) {
                setState(() {_selectedValue = newValue!;});
              },
            )
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              style: TextStyle(fontSize: 15.0),
              decoration: InputDecoration(
                labelText: 'Start Time',
                prefixIcon: Icon(Icons.timer),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              style: TextStyle(fontSize: 15.0),
              decoration: InputDecoration(
                labelText: 'Finish Time',
                prefixIcon: Icon(Icons.timer),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      )
    );
  }
}