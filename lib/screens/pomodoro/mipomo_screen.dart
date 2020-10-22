import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_school_friend/core/colors.dart';
import 'package:my_school_friend/widgets/pomodoro_button.dart';

class MiPomo extends StatefulWidget {
  @override
  MiPomoState createState() => MiPomoState();
}

int initialMinutes = 24;
int initialSeconds = 60;
String time = '25:00';
var duration = const Duration(seconds: 1);
var watch = Stopwatch();

class MiPomoState extends State<MiPomo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F6097),
      appBar: buildAppBar(),
      body: _buildPomodoroTimer(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: Color(0xff1F6097),
      centerTitle: true,
      elevation: 0,
      title: Text('MiPomo'),
    );
  }

  Widget _buildPomodoroTimer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            stopwatch(),
            buttons(),
          ],
        ),
      ),
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _restart,
          iconSize: 50,
          color: _isPlaying() ? Colors.white : Colors.white.withOpacity(.6),
        ),
        SizedBox(width: 30),
        PomodoroButton(
          title: _isPlaying() ? 'Pause' : 'Start',
          icon: _isPlaying()
              ? Icon(
                  Icons.pause,
                  size: 50,
                  color: Colors.white,
                )
              : Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: Colors.white,
                ),
          onTap: _startStopwatch,
        ),
      ],
    );
  }

  void _startStopwatch() {
    if (_isPlaying()) {
      watch.stop();
    } else {
      watch.start();
      _startTimer();
    }
  }

  void _restart() {
    watch.stop();
    watch.reset();
    setState(() {
      time = '25:00';
    });
  }

  bool _isPlaying() {
    return watch.isRunning;
  }

  void _startTimer() {
    Timer(duration, _keepRunning);
  }

  void _keepRunning() {
    if (watch.isRunning) {
      _startTimer();
    }

    setState(() {
      int currentMinute = int.parse(watch.elapsed.inMinutes.toString());
      int currentSeconds = int.parse((watch.elapsed.inSeconds % 60).toString());
      int timerMinutes = initialMinutes - currentMinute;
      int timerSeconds = initialSeconds - currentSeconds;

      if (timerSeconds < 60 && timerSeconds >= 0) {
        time = timerMinutes.toString().padLeft(2, '0') +
            ':' +
            timerSeconds.toString().padLeft(2, '0');

        if (time == '00:00') {}
      }
      if (timerMinutes < 0) {
        time = '00:00';
        watch.stop();
      }
    });
  }
}

Widget stopwatch() {
  return Container(
    height: 250,
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(200),
      color: Color(0xff3e7aab),
      border: Border.all(
        color: Colors.white,
        width: 3,
      ),
    ),
    child: Center(
      child: Text(
        time,
        style: TextStyle(fontSize: 70, color: Colors.white),
      ),
    ),
  );
}
