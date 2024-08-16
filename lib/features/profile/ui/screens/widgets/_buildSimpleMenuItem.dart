import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleMenuItem extends StatefulWidget {
  final String? title;

  const SimpleMenuItem(String s, {Key? key,  this.title, }) : super(key: key);

  @override
  _SimpleMenuItemState createState() => _SimpleMenuItemState();
}

class _SimpleMenuItemState extends State<SimpleMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          IconButton(
            constraints: const BoxConstraints(),
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            padding: EdgeInsets.zero,
            onPressed: () {
              // هنا يمكن تنفيذ الوظيفة المطلوبة عند الضغط
            },
            icon: const Icon(Icons.chevron_right, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
