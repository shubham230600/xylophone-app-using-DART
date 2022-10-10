import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void play(int a) {
    final player = AudioCache();
    player.play('assets_note$a.wav');
  }
Expanded sect({required Color col, required int i})
{
  return Expanded(
    child: FlatButton(
        color: col,
        onPressed: () {
          play(i);
        },
        child: Center()),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sect(col: Colors.red,i:1),
            sect(col: Colors.orange,i:2),
            sect(col: Colors.yellow,i:3),
            sect(col: Colors.green,i:4),
            sect(col: Colors.blueGrey,i:5),
            sect(col: Colors.blue,i:6),
            sect(col: Colors.purple,i:7),
          ],
        ),
      ),
    );
  }
}
