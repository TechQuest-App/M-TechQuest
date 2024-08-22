import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/extensions/app_navigotion.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_divider.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/custom_text_field.dart';
import 'package:techquest/features/profile/ui/screens/porfile/widget/bottom_navigation_bar.dart';
import 'package:techquest/features/profile/ui/screens/porfile/widget/simple_menu_item.dart';
import 'package:techquest/generated/l10n.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          S.of(context).Profile,
          style: AppTextStyles.font30BlackSemiBold,
        ),
      ),
      backgroundColor: white,
      body:  SingleChildScrollView(
        child:  SafeArea(
          child: Column(
            children: [
              const CustomTextField(),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal:5,vertical: 5 ),
                child:   SimpleMenuItem(
                  title: S.of(context).ResetPassword,
                  onPressed: () {
                    context.pushNamed(Routes.resetPassword);
                  },
                ),
              ),
             AppDivider.myDivider,
               Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                child:   SimpleMenuItem(
                  title: S.of(context).ChangePhoneNumber,
                  onPressed: ()
                  {
                    context.pushNamed(Routes.changePhoneNumber);
                  },
                ),
              ),
             AppDivider.myDivider,
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
