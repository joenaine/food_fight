import 'package:battle_men_and_women/fortune_wheel_screen.dart';
import 'package:battle_men_and_women/services/screen_navigation_const.dart';
import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.redAccent,
  Colors.greenAccent,
  Colors.blueAccent,
  Colors.amberAccent,
];

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.black87,
        // foregroundColor: Colors.white,
        // borderRadius: BorderRadius.circular(10),
        padding: const EdgeInsets.fromLTRB(75, 20, 75, 20));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/bc.jpg',
                ),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),
              const Text('FOOD BATTLE',
                  style: TextStyle(fontSize: 80, color: Colors.white, shadows: [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.white),
                    Shadow(
                        // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.black),
                    Shadow(
                        // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.black),
                    Shadow(
                        // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.black),
                  ])),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  changeScreen(context, const FortuneWheelScreen());
                },
                style: buttonStyle,
                child: const Text('Play', style: TextStyle(fontSize: 25)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
