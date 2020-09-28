import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  FlatButton fun2() {
    return FlatButton(
      color: Colors.red,
      onPressed: () {
        fun1(1);
      },
      child: null,
    );
  }

  void fun1(int musicNumber) {
    final player = AudioCache();

    player.play('note$musicNumber.wav');
  }

  Expanded buildKey({Color color, int musicNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          fun1(musicNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, musicNumber: 1),
              buildKey(color: Colors.orange, musicNumber: 2),
              buildKey(color: Colors.yellow, musicNumber: 3),
              buildKey(color: Colors.green, musicNumber: 4),
              buildKey(color: Colors.green.shade400, musicNumber: 5),
              buildKey(color: Colors.lightBlue, musicNumber: 6),
              buildKey(color: Colors.purple, musicNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
