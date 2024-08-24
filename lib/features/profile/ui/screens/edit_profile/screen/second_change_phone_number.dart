import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/app_text_form_field.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/custom_buttom.dart';
import 'package:techquest/generated/l10n.dart';

class SecondChangePhoneNumber extends StatelessWidget {
  const SecondChangePhoneNumber ({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).EnterTheCodeSentTo,
              style: AppTextStyles.font14BlackSamibold,
              textAlign: TextAlign.center,
            ),
            verticalSpace(20),
            Text(S.of(context).EditPhoneNumber,style: AppTextStyles.font14Bluemedium,),
            verticalSpace(50),
            AppTextFormField(
              hintText: S.of(context).EnterCode,
            ),
            verticalSpace(40),
            CustomButtom(
              text: S.of(context).Save,
              onPressed: () 
              {
              },
            ),
            verticalSpace(10),
            
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).DontReceived,
                  style: AppTextStyles.font14BlackSamibold,

                ),
                TextSpan(
                  text: S.of(context).resend,
                  style: AppTextStyles.font14BlackSamibold.copyWith(
                    color: blue209
                  ),
                ),

              ]
            )),
          ],
        ),
      ),
    );
  }
}
