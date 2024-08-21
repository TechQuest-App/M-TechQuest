import 'package:flutter/material.dart';
import 'package:techquest/core/helpers/extensions/app_navigotion.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/features/profile/ui/widgets/menu_item.dart';
import 'package:techquest/generated/l10n.dart';

class MenuItemList extends StatelessWidget {
  const MenuItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(
          image: 'assets/svgs/profile_icon.svg',
          title: S.of(context).Profile,
          subtitle: S.of(context).EditYourPassword,
          onPressed: () {
            context.pushNamed(Routes.editProfile);
          },
        ),
        verticalSpace(15),
        MenuItem(
          image: 'assets/svgs/security_icon.svg',
          title: S.of(context).Security,
          subtitle: S.of(context).FaceID,
          onPressed: () {
            context.pushNamed(Routes.editSetting);
          },
        ),
        verticalSpace(15),
        MenuItem(
          image: 'assets/svgs/setting_icon.svg',
          title: S.of(context).Settings,
          subtitle: S.of(context).PaymentMethod,
          onPressed: () 
          {
            context.pushNamed(Routes.editSecurity);

          },
        ),
      ],
    );
  }
}
