import 'package:flutter/material.dart';

class MoodChanger extends StatefulWidget {
  const MoodChanger({super.key});

  @override
  State<MoodChanger> createState() => _MoodChangerState();
}

class _MoodChangerState extends State<MoodChanger> {
  Color boxColor = Colors.blue;

  void changeMood() {
    setState(() {
      boxColor = boxColor == Colors.blue ? Colors.pink : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mood Changer")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Center(
            child: GestureDetector(
              onTap: changeMood,
              child: AnimatedContainer(
                width: 160,
                height: 160,
                duration: const Duration(milliseconds: 300),
                color: boxColor,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/mood_background.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
