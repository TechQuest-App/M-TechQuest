import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildValidationIcon(hasLowerCase, Icons.text_fields, 'Lowercase'),
        buildValidationIcon(hasUpperCase, Icons.title, 'Uppercase'),
        buildValidationIcon(hasSpecialCharacters, Icons.emoji_symbols, 'Special Character'),
        buildValidationIcon(hasNumber, Icons.looks_one, 'Number'),
        buildValidationIcon(hasMinLength, Icons.check, 'Min. Length'),
      ],
    );
  }

  Widget buildValidationIcon(bool hasValidated, IconData iconData, String tooltip) {
    return Tooltip(
      message: tooltip,
      child: Icon(
        iconData,
        color: hasValidated ? Colors.green : gray,
        size: 24,
      ),
    );
  }
}