import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/widget/app_text_form_field.dart';
import 'package:techquest/generated/l10n.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key,this.name});
  final String? name;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscureText = true;
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).FirstName,
                style: AppTextStyles.font16Gray880Semibold,
              ),
              verticalSpace(5),
               AppTextFormField(
                hintText: S.of(context).EnterYourFirstName,
              ),
              verticalSpace(5),
              Text(
               S.of(context).LastName,
                style: AppTextStyles.font16Gray880Semibold,
              ),
              verticalSpace(5),
               AppTextFormField(
                hintText: S.of(context).EnterYourLastName,
              ),
              verticalSpace(5),
              Text(
                S.of(context).Email,
                style: AppTextStyles.font16Gray880Semibold,
              ),
              verticalSpace(5),
               const AppTextFormField(
              ),
              verticalSpace(5),
              Text(
                S.of(context).Password,
                style: AppTextStyles.font16Gray880Semibold,
              ),
              verticalSpace(5),
              AppTextFormField(
                isObscureText: isObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText; 
                    });
                  },
                  child: Icon(
                    isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
              verticalSpace(12),
              Text(
                S.of(context).Phone,
                style: AppTextStyles.font16Gray880Semibold,
              ),
              verticalSpace(12),
              const AppTextFormField(
                hintText: '+20 ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
