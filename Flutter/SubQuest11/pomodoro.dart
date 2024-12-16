import 'dart:async';

void main() {
  timeRemaining remaining = timeRemaining([25, 5, 15]);
  RepCounter session = RepCounter(4);

  Timer.periodic(const Duration(seconds: 1), (timer) {
    timerRunner(timer, remaining, session);
  });
}

void timerRunner(Timer timer, timeRemaining remaining, RepCounter session) {
  if (remaining.seconds != 0) {
    print('flutter: ${Duration(seconds: remaining.seconds).toString().substring(2,7)}');
    remaining.countdown();
  } else if (session.sessionComplete(remaining) == true) {
    print('sessions complete');
    timer.cancel();
  }
}

class timeRemaining {
  late int remainingSeconds;
  late List<int> timeSet;

  timeRemaining(List<int> timeList) {
    timeSet = timeList;
    remainingSeconds = timeSet[0] * 60;
  }

  void countdown() {
    remainingSeconds--;
  }

  int get seconds {
    return remainingSeconds;
  }

  set seconds(int minutes) {
    remainingSeconds = minutes * 60;
  }

  int times(int index) {
    return timeSet[index];
  }
}

class RepCounter {
  late int repetition;
  bool isBreak = false;

  RepCounter(int reps) {
    repetition = reps;
  }

  bool? sessionComplete(timeRemaining remaining) {
    isBreak = isBreak != true;

    if (isBreak == false) {
      if (repetition == 1) {
        return true;        
      } else {
        remaining.seconds = remaining.times(0);
        repetition--;
        return false;
      }

    } else {
      if (repetition != 1) {
        remaining.seconds = remaining.times(1);
        return false;
      } else {
        remaining.seconds = remaining.times(2);
        return false;
      }
    }
  }

  int get reps {
    return repetition;
  }

  bool get sessionType {
    return isBreak;
  }
}