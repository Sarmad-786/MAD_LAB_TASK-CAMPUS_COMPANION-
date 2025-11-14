import 'package:flutter/material.dart';

class StudyCounter extends StatefulWidget {
  const StudyCounter({super.key});

  @override
  State<StudyCounter> createState() => _StudyCounterState();
}

class _StudyCounterState extends State<StudyCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Study Session Counter")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/study_counter.png",
                width: 100,
                height: 150, // limit height to prevent overflow
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Text(
                "Sessions: $count",
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() => count++);
                },
                child: const Text("Add Session"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() => count = 0);
                },
                child: const Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
