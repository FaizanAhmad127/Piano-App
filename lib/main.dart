import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSounds(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSounds(soundNumber);
        },
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Center(child: Text('XylophoneAp')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.lime),
              buildKey(2, Colors.red),
              buildKey(3, Colors.black),
              buildKey(4, Colors.blue),
              buildKey(5, Colors.orange),
              buildKey(6, Colors.pink),
              buildKey(7, Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
