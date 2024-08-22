import 'package:flutter/material.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_divider.dart';
import 'package:techquest/features/profile/ui/screens/porfile/widget/simple_menu_item.dart';
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
             AppDivider.myDivider,
              verticalSpace(10),
               SimpleMenuItem(
                title: S.of(context).Reviews,
              ),
             AppDivider.myDivider,
              verticalSpace(10),
               SimpleMenuItem(
                title: S.of(context).Currency,
              ),
      ],
    );
  }
}