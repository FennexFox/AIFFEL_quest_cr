import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'new_task.dart';
import '../SubQuest C 14.dart';

class Tracking extends StatefulWidget {
  const Tracking({super.key});

  @override
  State<StatefulWidget> createState() => TrackingState();

}

class TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex:5,
            child:Container(
              alignment: Alignment.center,
              child: AnalogClock(
                hourHandColor: Colors.amber,
                minuteHandColor: Colors.amber,
                numberColor: Colors.blueGrey,
                showDigitalClock: false,
                isLive: true,
                datetime: DateTime.now(),
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "${DateTime.now().month}/${DateTime.now().day}, ${DateTime.now().year}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                )
              ),
          ),
          Expanded(
            flex:1,
            child: Container(
              alignment: Alignment.center,
              child: const TrackerController()
            )
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const NewTask()));},
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.blueGrey),
                child: const Text(
                  "Here be Task Info, \n and if you click it, \n it'll open a 'new task' page",
                  style: TextStyle(backgroundColor: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          )
        ]
      ),
    );
  }
}

enum Controller {play, pause, stop}

class TrackerController extends StatefulWidget {
  const TrackerController({super.key});

  @override
  State<TrackerController> createState() => TrackerControllerState();
}

class TrackerControllerState extends State<TrackerController> {
  Controller button = Controller.stop;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Controller>(
      segments: const [
        ButtonSegment(
          value: Controller.play,
          label: Text("Start"),
          icon: Icon(Icons.play_arrow)
        ),
        ButtonSegment(
          value: Controller.pause,
          label: Text("Pause"),
          icon: Icon(Icons.pause)
        ),
        ButtonSegment(
          value: Controller.stop,
          label: Text("Stop"),
          icon: Icon(Icons.stop)
        ),
      ],
      selected: <Controller>{button},
      onSelectionChanged: (Set<Controller> newSelection) {
        setState(() {
          button = newSelection.first;
        });
      },
    );
  }
}