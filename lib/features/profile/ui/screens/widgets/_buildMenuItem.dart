import 'package:flutter/material.dart';
import 'package:techquest/core/theming/app_text_styles.dart';

class MenuItem extends StatefulWidget {
  final IconData? icon;
  final String? title;
  final String? subtitle;

  const MenuItem(IconData person_outline, String profile, String s, {
    Key? key,
     
     this.title,
     this.subtitle, this.icon,
  }) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
      ),
      onPressed: () {
        // تنفيذ العملية المطلوبة عند الضغط
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Placeholder(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(widget.icon, size: 24, color: Colors.black),
            SizedBox(width: 16), // استخدم SizedBox للفراغ الأفقي
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title!,
                    style: AppTextStyles.font16BlackRegular, // تأكد من تعريف AppTextStyles
                  ),
                  SizedBox(height: 4), // استخدم SizedBox للفراغ العمودي
                  Text(
                    widget.subtitle!,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
