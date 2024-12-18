import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('플러터 앱 만들기'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: AppContent(),
        ),
      ),
    );
  }
}

class AppContent extends StatelessWidget {
  const AppContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 중앙에 Button 추가
        ElevatedButton(
          onPressed: () {
            // DEBUG CONSOLE에 출력
            debugPrint('버튼이 눌렸습니다');
          },
          child: Text('Text'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: [
            for (int i = 0; i < 5; i++)
              Container(
                width: 300 - (i * 60).toDouble(),
                height: 300 - (i * 60).toDouble(),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5),
                ),
              ),
          ],
        ),
      ],
    );
  }
}