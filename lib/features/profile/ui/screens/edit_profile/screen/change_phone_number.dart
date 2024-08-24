import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/extensions/app_navigotion.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/app_text_form_field.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/custom_buttom.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/international_phone_number.dart';
import 'package:techquest/generated/l10n.dart';

class ChangePhoneNumber extends StatelessWidget {
  const ChangePhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          S.of(context).ChangePhoneNumber,
          style: AppTextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Text(
              S.of(context).ChangePhoneMessage,
              style: AppTextStyles.font14BlackSamibold,
              
            ),
            verticalSpace(50),
              const InternationalPhoneNumber(),
            verticalSpace(15),
            const AppTextFormField(
              hintText: ' 0000000',
              
            ),
            verticalSpace(40),
            CustomButtom(
              text: S.of(context).Continue,
              onPressed: () 
              {
                context.pushNamed(Routes.secondChangePhoneNumber);
              },
            )
          ],
        ),
      ),
     
    );
  }
}
