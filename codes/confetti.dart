import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConfettiWidget(
          confettiController: _controller,
          blastDirectionality: BlastDirectionality.explosive,
          shouldLoop: true,
          emissionFrequency: 0.05,
          numberOfParticles: 100,
          gravity: 0.1,
          position: Position(x: 0.5, y: 0.5),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.play();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
