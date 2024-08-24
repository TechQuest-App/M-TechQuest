import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/app_text_form_field.dart';
import 'package:techquest/features/profile/ui/screens/porfile/widget/simple_menu_item.dart';
import 'package:techquest/features/profile/ui/widgets/last_container.dart';
import 'package:techquest/generated/l10n.dart';

class EditSetting extends StatelessWidget {
  const EditSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          S.of(context).Settings,
          style: AppTextStyles.font30BlackSemiBold,
        ),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SimpleMenuItem(
                    title: S.of(context).PaymentAndShippingInfo,
                  ),
                ),
                Text(
                  S.of(context).FullName,
                  style: AppTextStyles.font16Gray880Semibold,
                ),
                const AppTextFormField(),
                verticalSpace(10),
                Text(S.of(context).Email),
                const AppTextFormField(),
                verticalSpace(10),
                Text(S.of(context).Phone),
                const AppTextFormField(),
                verticalSpace(10),
                Text(
                  S.of(context).ShippingAddress,
                  style: AppTextStyles.font16Gray880Semibold,
                ),
                const AppTextFormField(),
                verticalSpace(20),
                Center(
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                width: 400.w,
                                height: 400.h, 
                                padding: const EdgeInsets.all(16.0),
                                child: const LastContainer(),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(S.of(context).DeleteMyAccount,
                          style: AppTextStyles.font18Redmedium)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
