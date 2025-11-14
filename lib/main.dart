import 'package:flutter/material.dart';
import 'screens/student_dashboard.dart';

void main() => runApp(const CampusCompanion());

class CampusCompanion extends StatelessWidget {
  const CampusCompanion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Companion',
      theme: ThemeData(useMaterial3: true),
      home: const StudentDashboard(),
    );
  }
}
