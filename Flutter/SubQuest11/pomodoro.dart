import 'dart:async';

void main() {
  Remaining remaining = Remaining([5, 3, 6]);
  RepCounter session = RepCounter(2);

  Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    timerRunner(timer, remaining, session);
  });
}

void timerRunner(Timer timer, Remaining remaining, RepCounter session) {
  if (remaining.seconds != 0) {
    print('flutter: ${Duration(seconds: remaining.seconds).toString().substring(2,7)}');
    remaining.countdown();
  } else if (session.sessionComplete(remaining) == true) {
    print('sessions complete');
    timer.cancel();
  }
}

class Remaining {
  late int remainingSeconds;
  late List<int> timeSet;

  Remaining(List<int> timeList) {
    timeSet = timeList;
    remainingSeconds = timeSet[0];
  }

  void countdown() {
    remainingSeconds--;
  }

  int get seconds {
    return remainingSeconds;
  }

  set seconds(int second) {
    remainingSeconds = second;
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

  bool? sessionComplete(Remaining remaining) {
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