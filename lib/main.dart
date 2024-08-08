import 'package:flutter/material.dart';
import 'package:techquest/features/onboarding/ui/screens/onborading.dart';

void main() {
  runApp(const TechQuest());
}

class TechQuest extends StatelessWidget {
  const TechQuest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TechQuest',
      home: Onboarding(),
    );
  }
}
