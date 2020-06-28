import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundTrack) {
    final player = new AudioCache();
    player.play('note$soundTrack.wav');
  }

  Expanded buildKey({Color color, int soundTrack}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundTrack);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundTrack: 1),
                buildKey(color: Colors.orange, soundTrack: 2),
                buildKey(color: Colors.yellow, soundTrack: 3),
                buildKey(color: Colors.lightGreen, soundTrack: 4),
                buildKey(color: Colors.green, soundTrack: 5),
                buildKey(color: Colors.blue, soundTrack: 6),
                buildKey(color: Colors.purple, soundTrack: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
