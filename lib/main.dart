import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundTrack) {
    final player = new AudioCache();
    player.play('note$soundTrack.wav');
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
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      playSound(1);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(2);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.lightGreen,
                    onPressed: () {
                      playSound(4);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      playSound(5);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      playSound(6);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      playSound(7);
                    },
                    child: Text(''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
