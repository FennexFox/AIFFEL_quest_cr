import 'package:flutter/material.dart';
import '../SubQuest C 14.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<StatefulWidget> createState() => AppSettingsState();

}

class AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Customize Show Options"),
              ),
              ListTile(
                leading: Icon(Icons.collections_bookmark),
                title: Text('Group Work Units'),
                trailing: ToggleButton(),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.free_breakfast),
                title: Text("Show Breaks"),
                trailing: ToggleButton(),
                dense: true,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Sync External Calendar"),
              ),
              ListTile(
                leading: Icon(Icons.sync),
                title: Text('Sync Calendar'),
                trailing: ToggleButton(),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.edit_calendar),
                title: Text('Show Calendar'),
                trailing: ToggleButton(),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Select Calendars to Sync"),
                dense: true,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Account Management"),
              ),
              ListTile(
                leading: Icon(Icons.manage_accounts),
                title: Text('My Account'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.waving_hand),
                title: Text('Sign Out'),
                dense: true,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Appearance"),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Theme'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.text_fields),
                title: Text('Text Size'),
                dense: true,
              ),
            ],
          )
        ]
      )
    );
  }
}