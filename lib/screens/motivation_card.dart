import 'package:flutter/material.dart';

class MotivationCard extends StatelessWidget {
  const MotivationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daily Motivation")),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("You are doing great! Keep going!")),
            );
          },
          borderRadius: BorderRadius.circular(15),
          child: Ink(
            width: 230,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.teal.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset("assets/images/motivation_card.png", width: 85),
            ),
          ),
        ),
      ),
    );
  }
}
