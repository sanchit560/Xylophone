import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');


  }
  Expanded soundActivator({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
            children: [
              soundActivator(color:Colors.red , soundNumber:1),
              soundActivator(color:Colors.orange , soundNumber:2),
              soundActivator(color:Colors.yellow , soundNumber:3),
              soundActivator(color:Colors.green , soundNumber:4),
              soundActivator(color:Colors.blue , soundNumber:5),
              soundActivator(color:Colors.brown , soundNumber:6),
              soundActivator(color:Colors.purple, soundNumber:7),

            ],
          ),
        ),
      ),
    );
  }
}
