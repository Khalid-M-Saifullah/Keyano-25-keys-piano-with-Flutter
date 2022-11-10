import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class Keyboard extends StatefulWidget {
  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {


  void playSound(var soundNote) {
    final player = AudioCache();
    player.play('piano-mp3_$soundNote.mp3');
  }

  Expanded buildRightWhiteKey () {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        child:ElevatedButton(
          onPressed: () {  },
          child: null,
          style: ButtonStyle(
            enableFeedback: false,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),

        ),
      ),
    );
  }

  Expanded buildBigWhiteKey () {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        child:ElevatedButton(
          onPressed: () {  },
          child: null,
          style: ButtonStyle(
            enableFeedback: false,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),

        ),
      ),
    );
  }
  //function
  Expanded buildWhiteKey (var note) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        child:ElevatedButton(
          onPressed: () {
            playSound(note);
          },
          child: null,
          style: ButtonStyle(
            enableFeedback: false,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white70),
          ),

        ),
      ),
    );
  }



  //function
  Expanded buildBlackKey(var note) {
    return Expanded(
      flex: 2,
      child: Container (
        width: double.infinity,
        child: ElevatedButton (

          onPressed: () {
            playSound(note);
          },
          child: null,

          style: ButtonStyle(
            enableFeedback: false,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
        ),
      ),
    );
  }

  Expanded buildHalfWhiteKey () {
    return Expanded (
      flex: 1,
      child: Container (
        width: double.infinity,
        child: ElevatedButton (
          onPressed: () { },
          child: null,
          style: ButtonStyle(
            enableFeedback: false,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
    );
  }


  //function
  SizedBox linesBetweenKeys () {
    return const SizedBox(
      height: 1,
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body: Row(

          children: <Widget> [
            Expanded(
              flex: 3,
              child: Column(

                children: <Widget> [

                  buildWhiteKey('C4'),
                  linesBetweenKeys(),

                  buildWhiteKey('D4'),
                  linesBetweenKeys(),

                  buildWhiteKey('E4'),
                  linesBetweenKeys(),

                  buildWhiteKey('F4'),
                  linesBetweenKeys(),

                  buildWhiteKey('G4'),
                  linesBetweenKeys(),

                  buildWhiteKey('A5'),
                  linesBetweenKeys(),

                  buildWhiteKey('B5'),
                  linesBetweenKeys(),

                  buildWhiteKey('C5'),
                  linesBetweenKeys(),

                  buildWhiteKey('D5'),
                  linesBetweenKeys(),

                  buildWhiteKey('E5'),
                  linesBetweenKeys(),

                  buildWhiteKey('F5'),
                  linesBetweenKeys(),

                  buildWhiteKey('G5'),
                  linesBetweenKeys(),

                  buildWhiteKey('A6'),
                  linesBetweenKeys(),

                  buildWhiteKey('B6'),
                  linesBetweenKeys(),

                  buildWhiteKey('C6'),


                ],
              ),
            ),

            Expanded(
              flex: 5,
              child: Column (

                children: <Widget> [

                  buildHalfWhiteKey(),

                  linesBetweenKeys(),
                  buildBlackKey('Db4'),
                  linesBetweenKeys(),

                  buildHalfWhiteKey(),

                  buildBlackKey('Eb4'),


                  buildRightWhiteKey(),

                  buildBlackKey('Gb4'),

                  buildHalfWhiteKey(),

                  buildBlackKey('Ab5'),

                  buildHalfWhiteKey(),

                  buildBlackKey('Bb5'),

                  buildRightWhiteKey(),

                  buildBlackKey('Db5'),

                  buildHalfWhiteKey(),

                  buildBlackKey('Eb5'),

                  buildHalfWhiteKey(),

                  buildHalfWhiteKey(),

                  buildBlackKey('Gb5'),

                  buildHalfWhiteKey(),

                  buildBlackKey('Ab6'),

                  buildHalfWhiteKey(),

                  buildBlackKey('Bb6'),

                  buildBigWhiteKey(),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}