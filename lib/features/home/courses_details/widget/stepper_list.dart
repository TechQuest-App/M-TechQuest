import 'package:flutter/material.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class StepperList extends StatefulWidget {
  const StepperList({super.key});

  @override
  _StepperListState createState() => _StepperListState();
}

class _StepperListState extends State<StepperList> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      onStepTapped: (int step) {
        setState(() {
          _currentStep = step;
        });
      },
      onStepContinue: () {
        if (_currentStep < 2) {
          setState(() {
            _currentStep += 1;
          });
        }
      },
      onStepCancel: () {
        if (_currentStep > 0) {
          setState(() {
            _currentStep -= 1;
          });
        }
      },
      steps: [
        Step(
          title: Text(
            'Welcome Lecture\nvideo : 20 min',
            style: AppTextStyles.font14BlackSamibold,
          ),
          content: const Column(),
          isActive: _currentStep == 0,
          state: _currentStep == 0 ? StepState.editing : StepState.complete,
          label: Icon(
            Icons.book,
            color: _currentStep == 0 ? Colors.blue : Colors.grey,
          ),
        ),
        Step(
          title: Text(
            'UX definition\nvideo : 20 min',
            style: AppTextStyles.font14BlackSamibold,
          ),
          content: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          isActive: _currentStep == 1,
          state: _currentStep == 1 ? StepState.editing : StepState.complete,
          label: Icon(
            Icons.assignment,
            color: _currentStep == 1 ? red : black,
          ),
        ),
        Step(
          title: const Text('Level 3 (10 Lec)'),
          content: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
          isActive: _currentStep == 2,
          state: _currentStep == 2 ? StepState.editing : StepState.complete,
          label: Icon(
            Icons.album_outlined,
            color: _currentStep == 2 ? Colors.blue : Colors.grey,
          ),
        ),
      ],
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Row(
          children: <Widget>[
          ],
        );
      },
    );
  }
}
