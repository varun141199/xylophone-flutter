import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey({Color color, int n}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, n: 1),
                buildKey(color: Colors.deepOrange, n: 2),
                buildKey(color: Colors.deepOrangeAccent, n: 3),
                buildKey(color: Colors.orange, n: 4),
                buildKey(color: Colors.orangeAccent, n: 5),
                buildKey(color: Colors.yellow, n: 6),
                buildKey(color: Colors.yellowAccent, n: 7),
              ],
          ),
        ),
      ),
    );
  }
}
