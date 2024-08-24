import 'package:flutter/material.dart';
import 'package:techquest/features/mentor/widget/circle_avatar_mentor.dart';
import 'package:techquest/features/mentor/widget/experience_contant.dart';
import 'package:techquest/features/mentor/widget/review_contant.dart';

class MentorProfile extends StatelessWidget {
  const MentorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
             CircleAvatarMentor(),
             ExperienceContant(),
             ReviewContant(),
          ],
        ),
      ),
    );
  }
}
