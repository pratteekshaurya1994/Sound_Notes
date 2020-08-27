import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded noteKey(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
        child: Text(
          'Hit to play',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
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
              noteKey(Colors.red, 1),
              noteKey(Colors.orange, 2),
              noteKey(Colors.green, 3),
              noteKey(Colors.yellow, 4),
              noteKey(Colors.teal, 5),
              noteKey(Colors.blue, 6),
              noteKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

// class XylophoneApp extends StatelessWidget {
//   void playSound(int soundNumber) {
//     final player = AudioCache();
//     player.play('note$soundNumber.wav');
//   }

//   Expanded buildKey({Color color, int noteNumber}) {
//     return Expanded(
//       child: FlatButton(
//         color: color,
//         onPressed: () {
//           playSound(noteNumber);
//         },
//         child: Text('click me'),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               buildKey(color: Colors.red, noteNumber: 1),
//               buildKey(color: Colors.orange, noteNumber: 2),
//               buildKey(color: Colors.yellow, noteNumber: 3),
//               buildKey(color: Colors.teal, noteNumber: 4),
//               buildKey(color: Colors.green, noteNumber: 5),
//               buildKey(color: Colors.blue, noteNumber: 6),
//               buildKey(color: Colors.purple, noteNumber: 7),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
