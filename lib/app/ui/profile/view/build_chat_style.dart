import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:mm_it_code_test/app/ui/profile/controller/profile_main_controller.dart';

Widget buildChatStyle(context, ProfileMainController profileMainController) {
  return Container(
    color: Color(0xffF4F3F8),
    height: double.infinity,
    padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child: Text(
              "Tuesday , 9:28 pm",
              style:
                  TextStyle(color: Colors.grey, fontSize: dSmallFontSize10.sp),
            )),
        const SizedBox(
          height: 12,
        ),
        Container(
            padding: EdgeInsets.all(8),
            width: 200.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.h)),
            child: const Text(
                "Additionally, with us, all the data you provide in your Dear Valued Customer Letter Examples is protected against loss or damage with the help of industry-leading file encryption."))
      ],
    ),
  );
}
