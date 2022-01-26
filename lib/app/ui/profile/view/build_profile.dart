import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:mm_it_code_test/app/ui/profile/controller/profile_main_controller.dart';

Widget buildProfile(context, ProfileMainController profileMainController) {
  return Container(
    color: Colors.white,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              color: const Color(0xff219ebc).withOpacity(0.4),
              borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "SS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: dExtraLargeFontSize16.sp,
                  color: const Color(0xff219ebc)),
            ),
          ),
        ),
        const Text(
          "Store Shop",
          style: TextStyle(
              color: Colors.black,
              fontSize: dLargeFontSize14,
              fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* SizedBox(
              height: 10.h,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),*/
            Container(
              margin: const EdgeInsets.only(right: 2),
              height: 10.h,
              width: 10.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.green),
            ),
            const Text(
              "Active",
              style: TextStyle(color: Colors.black, fontSize: dLargeFontSize14),
            ),
          ],
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange.withOpacity(0.3)),
                child: Image.asset(
                  "assets/images/baggy.png",
                  height: 80.h,
                  width: 80.h,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order #1098383",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          fontSize: dLargeFontSize14.sp)),
                  Text("45 E 45 St Ny New York",
                      style: TextStyle(
                          color: Colors.grey, fontSize: dMediumFontSize12.sp)),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("199 \$",
                      style: TextStyle(
                          color: Colors.red, fontSize: dLargeFontSize14.sp)),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                height: 28.h,
                child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 18.sp,
                    )),
              )
            ],
          ),
        )
      ],
    ),
  );
}
