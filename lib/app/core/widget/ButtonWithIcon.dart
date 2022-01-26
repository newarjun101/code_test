import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';

class ButtonWithIcon extends StatelessWidget {
  Color bgColor;
  Color titleColor;
  Color iconBgColor;
  Color iconColor;
  String title;
  IconData icon;
  VoidCallback onClick;

  ButtonWithIcon(
      {Key? key,
      required this.bgColor,
      required this.titleColor,
        required this.title,
        required this.icon,
        required this.iconBgColor,
        required this.iconColor,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(
          left: 4,
          right: 4,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: bgColor),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: titleColor,
                  fontSize: dLargeFontSize14.sp,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 4, top: 4, bottom: 4, left: 4),
              child: CircleAvatar(
                backgroundColor: iconBgColor,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 16.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
