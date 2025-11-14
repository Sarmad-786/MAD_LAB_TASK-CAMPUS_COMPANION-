import 'package:flutter/material.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Achievements")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/achievement_image.png",
                width: 120,
                height: 150, // limit height to prevent overflow
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              const Text(
                "Your Achievements",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 50),
                  Icon(Icons.star_half, color: Colors.orange, size: 50),
                  Icon(Icons.star_border, color: Colors.grey, size: 50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
