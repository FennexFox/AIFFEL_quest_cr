import 'package:flutter/material.dart';
import 'pages/tasks_settings.dart';
import 'pages/app_settings.dart';
import 'pages/tracking.dart';


void main() {
  runApp(const GetProductive());
}

class GetProductive extends StatelessWidget {
  const GetProductive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const GetProductiveNavigation(),
    );
  }
}

class GetProductiveNavigation extends StatefulWidget {
  const GetProductiveNavigation({super.key});
  
  @override
  GetProductiveNavigationState createState() => GetProductiveNavigationState();
}

class GetProductiveNavigationState extends State<GetProductiveNavigation> {
  int _navigateIndex = 1;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    TasksSettings(),
    Tracking(),
    AppSettings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _navigateIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.light_mode),
        title: const Text('Get Productive!'),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_navigateIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Tracking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedIconTheme: const IconThemeData(color: Colors.amber),
        selectedLabelStyle: TextStyle(foreground: Paint()..color = Colors.amber, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(foreground: Paint()..color = Colors.grey),
        currentIndex: _navigateIndex,
        onTap: _onItemTapped,
      ),
    );
  } 
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  ToggleButtonState createState() => ToggleButtonState();
}

class ToggleButtonState extends State<ToggleButton> {
  bool _isToggled = true;

  void _toggleToggle() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_isToggled ? Icons.toggle_on : Icons.toggle_off),
      color: _isToggled ? Colors.white : Colors.grey,
      onPressed: _toggleToggle,
    );
  }
}