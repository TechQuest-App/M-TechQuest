import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/features/profile/ui/widgets/simple_menu_item.dart';
import 'package:techquest/generated/l10n.dart';

class SimpleMenuItemList extends StatelessWidget {
  const SimpleMenuItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SimpleMenuItem(
                title: S.of(context).RateApplication,
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5.sp, 
              ),
              verticalSpace(10),
               SimpleMenuItem(
                title: S.of(context).Reviews,
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5.sp, 
              ),
              verticalSpace(10),
               SimpleMenuItem(
                title: S.of(context).Currency,
              ),
      ],
    );
  }
}