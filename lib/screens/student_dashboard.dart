import 'package:flutter/material.dart';
import '../widgets/menu_button.dart';
import 'achievement_screen.dart';
import 'quick_actions_screen.dart';
import 'mood_changer.dart';
import 'motivation_card.dart';
import 'study_counter.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Campus Companion")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: const [
              MenuButton(
                title: "Student Achievements",
                image: "assets/images/achievement_image.png",
                page: AchievementScreen(),
              ),
              SizedBox(height: 15),
              MenuButton(
                title: "Quick Actions",
                image: "assets/images/quick_actions.png",
                page: QuickActionsScreen(),
              ),
              SizedBox(height: 15),
              MenuButton(
                title: "Mood Changer",
                image: "assets/images/mood_background.png",
                page: MoodChanger(),
              ),
              SizedBox(height: 15),
              MenuButton(
                title: "Motivation Card",
                image: "assets/images/motivation_card.png",
                page: MotivationCard(),
              ),
              SizedBox(height: 15),
              MenuButton(
                title: "Study Session Counter",
                image: "assets/images/study_counter.png",
                page: StudyCounter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
