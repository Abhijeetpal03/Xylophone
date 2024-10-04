import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }

  Expanded buildkey({required color, required int soundnum}) {
    return Expanded(
      child: Container(
        color: color,
        child: InkWell(
          onTap: () {
            playsound(soundnum);
          },
        ),
      ),
    );
  }

  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundnum: 1),
              buildkey(color: Colors.blue, soundnum: 2),
              buildkey(color: Colors.pink, soundnum: 3),
              buildkey(color: Colors.purple, soundnum: 4),
              buildkey(color: Colors.yellow, soundnum: 5),
              buildkey(color: Colors.green, soundnum: 6),
              buildkey(color: Colors.orange, soundnum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
