import 'package:flutter/material.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/generated/l10n.dart';

class ContainerButtom extends StatelessWidget {
  const ContainerButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          // BoxShadow(
          //   color: Colors.black12,
          //   blurRadius: 10.0,
          //   offset: Offset(0, 4),
          // ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total Price\n60\$',
            style: AppTextStyles.font18BlacksemiBold
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: blue54,
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 6.0),
            ),
            child: Text(
              S.of(context).EnrollNow,
              style: AppTextStyles.font16BWhiteBold,
            ),
          ),
        ],
      ),
    );
  }
}
