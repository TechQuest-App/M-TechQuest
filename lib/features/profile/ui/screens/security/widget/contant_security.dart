import 'package:flutter/material.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_divider.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/custom_buttom.dart';
import 'package:techquest/features/profile/ui/screens/porfile/widget/simple_menu_item.dart';
import 'package:techquest/generated/l10n.dart';

class ContantSecurity extends StatefulWidget {
  const ContantSecurity({super.key});

  @override
  State<ContantSecurity> createState() => _ContantSecurityState();
}

class _ContantSecurityState extends State<ContantSecurity> {
  bool isFaceIdEnabled = false;
  bool isTwoStepVerificationEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimpleMenuItem(
              title: S.of(context).FaceIDD,
              trailing: Switch(
                value: isFaceIdEnabled,
                onChanged: (value) {
                  setState(() {
                    isFaceIdEnabled = value;
                  });
                },
                activeColor: Colors.green,
              ),
            ),
            AppDivider.myDivider,
            SimpleMenuItem(
              title: S.of(context).TwoStepsVerification,
              trailing: Switch(
                value: isTwoStepVerificationEnabled,
                onChanged: (value) {
                  setState(() {
                    isTwoStepVerificationEnabled = value;
                  });
                },
                activeColor: green23,
              ),
            ),
            AppDivider.myDivider,
            verticalSpace(20),
            CustomButtom(
              onPressed: () {},
              text: S.of(context).Save,
            ),
      ],
    );
  }
}