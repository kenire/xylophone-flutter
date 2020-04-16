import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void player(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player(num);
        },
        color: color,
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
//            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.purple),
              buildKey(2, Colors.indigo),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.green),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
