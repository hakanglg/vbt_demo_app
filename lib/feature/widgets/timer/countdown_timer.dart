import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;

  static const countdownDuration = Duration(seconds: 15);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
    reset();
  }

  void reset() {
    if (isCountdown) {
      setState(() {
        duration = countdownDuration;
      });
    } else {
      setState(() {
        duration = Duration();
      });
    }
  }

  void addTime() {
    final addSecond = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSecond;
      duration = Duration(seconds: seconds);

      if (seconds == 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: buildTime()),
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    // final milliSeconds = twoDigits(duration.inMilliseconds.remainder(60));
    return Text(
      "${seconds}",
      style: TextStyle(fontSize: 50),
    );
  }
}
