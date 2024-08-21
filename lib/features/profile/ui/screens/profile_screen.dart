// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/widgets/bottom_navigation_bar.dart';
import 'package:techquest/features/profile/ui/widgets/curretly_piont_section.dart';
import 'package:techquest/features/profile/ui/widgets/menu_item_list.dart';
import 'package:techquest/features/profile/ui/widgets/sign_out.dart';
import 'package:techquest/features/profile/ui/widgets/simple_menu_item_list.dart';
import 'package:techquest/generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).Profile,
                  style: AppTextStyles.font30BlackSemiBold,
                ),
                verticalSpace(40),
                const CarrentlyPointsSection(),
                verticalSpace(20),
                const MenuItemList(),
                verticalSpace(20),
                const SimpleMenuItemList(),
                verticalSpace(25),
                const  SignOut(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  const BottomNavigation(),
    );
  }
}
