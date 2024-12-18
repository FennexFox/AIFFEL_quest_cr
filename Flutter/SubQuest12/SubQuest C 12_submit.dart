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

/**
    디버깅 기록
    - 

    회고

- 강소안 : StatelessWidget으로 작성하게 되어 완성할 수 있었다. const로 사용미숙으로 debuggiing 과정이 있어
- 박형호 : 코드의 전체적인 들이 어떤 형태를를 가지고 있는지는 이해했지만, 특정 위젯이 어떤 역할을 하고 어떠한 형태로 어디에 들어가야한다는 것에 대한 이해가 부족합니다.     
          학습탬플릿 미션을 아직 다 수행하지 못해여서 인것 같습니다
          오늘 중으로 최대한 따라가볼 생각이니다.
- 윤형석 : 이것저것 배운 건 많은데 충분히 다져넣지 못해서 자유자재로 사용하지를 못하는 아쉬움이 있다. 시간이 해결해줄 문제라고 생각하지만 어느 정도 조바심이 나는 건 어쩔 수 
           없는 듯하다.
 */