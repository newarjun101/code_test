import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWithBackArrow extends StatelessWidget with PreferredSizeWidget {

  String title;
  String endIcon;
 RxInt itemCount;

  AppBarWithBackArrow(
      {Key? key,
        required this.title,
        required this.itemCount,
        required this.endIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("$title"),
      leading: Icon(
        Icons.arrow_back_ios_sharp,
        size: 20.sp,
      ),
      actions: [
        SizedBox(
          width: 30,
          child: Stack(
            children: [
              Positioned(
                top: 2,
                bottom: 2,
                right: 4,
                child: SvgPicture.asset(endIcon,
                    width: 28, height: 28, color: Colors.black),
              ),

              Positioned(
                bottom: 8,
                left: 4,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child:  Center(
                      child: Obx(
                            () => Text(
                         itemCount.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}