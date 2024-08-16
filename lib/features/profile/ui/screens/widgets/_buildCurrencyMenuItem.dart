import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/font_wiegth_helper.dart';
import 'package:techquest/core/helpers/spacing.dart';
import 'package:techquest/core/theming/app_colors.dart';

class CurrencyMenuItem extends StatefulWidget {
  @override
  _CurrencyMenuItemState createState() => _CurrencyMenuItemState();
}

class _CurrencyMenuItemState extends State<CurrencyMenuItem> {
  String _selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Currency',
              style: TextStyle(fontSize: 16,fontWeight: FontWiegthHelper.bold)),
          Row(
            children: [
              Text(_selectedCurrency,
                  style: const TextStyle(color: primaryColor, fontSize: 16)),
              horizontalSpace(4),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  setState(() {
                    _selectedCurrency; 
                  });
                },
                icon: const Icon(Icons.chevron_right, color: gray100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
