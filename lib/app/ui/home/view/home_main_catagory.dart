import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';

Widget homeMainCatagory(BuildContext context) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Text("Catagories",
        style: TextStyle(
            color: Theme.of(context).colorScheme.primaryVariant,
            fontSize: dAppBarTitleFontSize.sp)),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        iconButton(
            colorOne: const Color(0xff45b2d2),
            colorTwo: const Color(0xff1e7178),
            onClick: () => print("Hello World"),
            context: context,
            title: 'Apparel',
            icon: 'assets/images/cloth.svg'),
        iconButton(
            colorOne: const Color(0xffffcdb2),
            colorTwo: const Color(0xfff08080),
            onClick: () => print("Hello World"),
            context: context,
            title: 'Beauty',
            icon: 'assets/images/beauty.svg'),
        iconButton(
            colorOne: const Color(0xff1b3a4b),
            colorTwo: const Color(0xff006466),
            onClick: () => print("Hello World"),
            context: context,
            title: 'Shoes',
            icon: 'assets/images/shoe.svg'),
        iconButton(
            colorOne: const Color(0xfffc6f0e),
            colorTwo: const Color(0xfffd8e0b),
            onClick: () => print("Hello World"),
            context: context,
            title: 'Bags',
            icon: 'assets/images/bag.svg')
      ],
    )
  ]);
}

Widget iconButton(
    {required String title,
    required String icon,
    required Color colorOne,
    required Color colorTwo,
    required VoidCallback onClick,
    context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Container(
            width: 56.w,
            height: 56.w,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [colorOne, colorTwo],
                ),
                boxShadow: [
                  BoxShadow(
                      color: colorOne,
                      blurRadius: 4,
                      offset: const Offset(2, 3))
                ]),
            child: Center(
                child: SvgPicture.asset(
              icon,
              color: Colors.white,
              width: 28.w,
              height: 28.w,
            )),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryVariant,
                fontSize: dLargeFontSize14.sp,
              )),
        ],
      ),
    ),
  );
}
