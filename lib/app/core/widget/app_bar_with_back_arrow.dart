import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWithSearch extends StatelessWidget with PreferredSizeWidget {
  SizeConfig sizeConfig;
  String title;
  String leftIcon;
  String rightIcon;
  String endIcon;

  AppBarWithSearch(
      {required this.sizeConfig,
        required this.title,
        required this.leftIcon,
        required this.rightIcon,
        required this.endIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("$title"),
      leading: Icon(
        Icons.arrow_back_ios_sharp,
        size: 30.sp,
      ),
      actions: [
        SizedBox(
          width: 30,
          child: Stack(
            children: [
              Positioned(
                top: 2,
                bottom: 2,
                right: 0,
                child: SvgPicture.asset(rightIcon,
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
                  child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
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
                  child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
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