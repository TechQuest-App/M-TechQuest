import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class SimpleMenuItem extends StatelessWidget {
  const SimpleMenuItem({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  AppTextStyles.font19BlackBold),
               IconButton(
              constraints: const BoxConstraints(),
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              padding: EdgeInsets.zero,
          onPressed: (){// to be implemented
             },
              icon: const Icon(Icons.chevron_right, color:gray100)),
        ],
      ),
    );
  }
}