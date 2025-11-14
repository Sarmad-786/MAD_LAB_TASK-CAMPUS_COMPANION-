import 'package:flutter/material.dart';

class QuickActionsScreen extends StatelessWidget {
  const QuickActionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quick Student Actions")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/quick_actions.png",
                width: 100,
                height: 150, // limit height to avoid overflow
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Reminder added!")),
                  );
                },
                child: const Text("Add Reminder"),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  debugPrint("Action logged");
                },
                child: const Text("Log Study Time"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
