import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logo_n_spinner/logo_n_spinner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  FirstState createState() => FirstState();
}

class FirstState extends State<FirstPage> {
  bool is_cat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Center(child: FaIcon(FontAwesomeIcons.cat)),
        title: const Text('First Page'),
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(),
            ),
            SizedBox(
              width: 100, height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    is_cat = !is_cat;
                  });
                  Navigator.pushNamed(context, "/second", arguments: is_cat);
                },
                child: const Text("Next"),
              )),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: GestureDetector(
                  child: const LogoandSpinner(
                  imageAssets: 'images/고양이그럴싸.png',
                  reverse: true,
                  arcColor: Colors.brown,
                  ),
                  onTap: () {
                    debugPrint(is_cat.toString());
                  },
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  SecondState createState() => SecondState();
}

class SecondState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    bool is_cat = ModalRoute.of(context)?.settings.arguments as bool;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Center(child: FaIcon(FontAwesomeIcons.dog)),
        title: const Text('Second Page'),
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(),
            ),
            SizedBox(
              width: 100, height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    is_cat = !is_cat;
                  });
                  Navigator.pushNamed(context, "/first", arguments: is_cat);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 50),
                ),
                child: const Text("Back"),
              )),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: GestureDetector(
                  child: const LogoandSpinner(
                    imageAssets: 'images/망아지프로필.jpg',
                    reverse: true,
                    arcColor: Colors.brown,
                    ),
                  onTap: () {
                    debugPrint(is_cat.toString());
                  },
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}