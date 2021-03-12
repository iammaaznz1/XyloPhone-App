import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String t}) {
    return Expanded(
        child: FlatButton(
      child: Text(t + ''),
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('XyloPhone')),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1, t: '♪'),
              buildKey(color: Colors.orange, soundNumber: 2, t: '♬'),
              buildKey(color: Colors.yellow, soundNumber: 3, t: '♫'),
              buildKey(color: Colors.green, soundNumber: 4, t: '❡'),
              buildKey(color: Colors.teal, soundNumber: 5, t: '∰'),
              buildKey(color: Colors.blue, soundNumber: 6, t: '∮'),
              buildKey(color: Colors.purple, soundNumber: 7, t: '♩'),
            ],
          ),
        ),
      ),
    );
  }
}
