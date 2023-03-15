import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int soundnumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$soundnumber.mp3'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(1);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Background color
                    ),
                    child: Text(""),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(2);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Background color
                    ),
                    child: Text(""),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(3);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color
                    ),
                    child: Text(""),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(4);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow, // Background color
                    ),
                    child: Text(""),
                  ),
                ),
                
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(5);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey, // Background color
                    ),
                    child: Text(""),
                  ),
                ),
                
                
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(6);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple, // Background color
                    ),
                    child: Text(""),
                  ),
                ),
                
                
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playSound(7);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyanAccent, // Background color
                    ),
                    child: Text(""),
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
