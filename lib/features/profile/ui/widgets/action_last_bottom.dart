import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/extensions/app_navigotion.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class ActionLastBottom extends StatelessWidget {
  const ActionLastBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
                  child: MaterialButton(
                    onPressed: ()
                     {
                      context.pop();
                     },
                    child: Container(
                      width: 100.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: red,
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).Cancel,
                          style: AppTextStyles.font16RedBold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: ()
                     {
                      SystemNavigator.pop();
                     },
                    child: Container(
                      width: 100.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.red,
                          width: 4.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).Confirm,
                          style: AppTextStyles.font16BWhiteBold,
                        ),
                      ),
                    ),
                  ),
                ),
      ],
    );
  }
}