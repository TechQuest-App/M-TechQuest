import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/generated/l10n.dart'; // إذا كنت تستخدم ScreenUtil

class PointsSection extends StatefulWidget {
  @override
  _PointsSectionState createState() => _PointsSectionState();
}

class _PointsSectionState extends State<PointsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h), // إذا كنت تستخدم ScreenUtil
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.amber, size: 24),
          SizedBox(width: 8.h), // استخدم SizedBox للفراغ الأفقي
          Expanded(
            child: Text(
              '${S.of(context).YourCurrentlyPoints}', // تأكد من أنك قد قمت بتعريف S و YourCurrentlyPoints
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // تأكد من تعريف FontWeight.bold
            ),
          ),
          const Text(
            '400',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
