import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/security/widget/contant_security.dart';
import 'package:techquest/generated/l10n.dart';

class EditSecurity extends StatefulWidget {
  const EditSecurity({super.key});

  @override
  _EditSecurityState createState() => _EditSecurityState();
}

class _EditSecurityState extends State<EditSecurity> {
  bool isFaceIdEnabled = false;
  bool isTwoStepVerificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          S.of(context).Security,
          style: AppTextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: const Column(
          children: [
            ContantSecurity(),
          ],
        ),
      ),
    );
  }
}
