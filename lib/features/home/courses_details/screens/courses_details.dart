import 'package:flutter/material.dart';
import 'package:techquest/features/home/courses_details/widget/container_buttom.dart';
import 'package:techquest/features/home/courses_details/widget/contant_details.dart';
import 'package:techquest/features/home/courses_details/widget/stepper_list.dart';
import 'package:techquest/features/home/courses_details/widget/tolbar_details.dart';

class CoursesDetails extends StatefulWidget {
  const CoursesDetails({super.key});

  @override
  _CoursesDetailsState createState() => _CoursesDetailsState();
}

class _CoursesDetailsState extends State<CoursesDetails> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child:  SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TolbarDetails(),
              ContantDetails(),
              StepperList(),
              ContainerButtom(),
             
            ],
          ),
        ),
      ),
    );
  }
}
