// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/font_wiegth_helper.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/widgets/_buildCurrencyMenuItem.dart';
import 'package:techquest/features/profile/ui/screens/widgets/_buildMenuItem.dart';
import 'package:techquest/features/profile/ui/screens/widgets/_buildPointsSection.dart';
import 'package:techquest/features/profile/ui/screens/widgets/_buildSimpleMenuItem.dart';
import 'package:techquest/generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            Text(S.of(context).Profile, style: AppTextStyles.font20BlackBold),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PointsSection(),
            verticalSpace(32),
            MenuItem(Icons.person_outline, S.of(context).Profile,
                '${S.of(context).EditYourPassword},${S.of(context).name},${S.of(context).address}${S.of(context).ShoesSize}', ),
            SizedBox(height: 24.h),
            MenuItem(Icons.security_outlined, S.of(context).Security,
                '${S.of(context).FaceID},${S.of(context).TwoStepVerification}',),
            SizedBox(height: 24.h),
            MenuItem(Icons.settings_outlined, S.of(context).Settings,
                '${S.of(context).PaymentMethod}, ${S.of(context).PaymentMethod}, ${S.of(context).Notifications}', ),
            verticalSpace(32),
            SimpleMenuItem(S.of(context).RateApplication),
            Divider(height: 32.h, thickness: 1, color: gray300),
            SimpleMenuItem(S.of(context).Reviews),
            Divider(height: 32.h, thickness: 1, color: gray300),
            CurrencyMenuItem(),
            SizedBox(height: 40.h),
            // Space before the Sign Out text
            Center(
              child: TextButton(
                onPressed: () {
                  // to be implemented
                  //add a variable to control which page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Placeholder(),
                      ));
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(0)),
                ),
                child:  Text(
                  '${S.of(context).SignOut}',
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Spacer(),
            // Space before the bottom navigation bar
          ],
        ),
      ),
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  

  

  

  

  
}
