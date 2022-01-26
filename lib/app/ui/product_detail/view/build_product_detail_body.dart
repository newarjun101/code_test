import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_carousel.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_tab_bar.dart';

Widget buildProductDetailBody(BuildContext context, productDetailController) {
  return Container(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("\$2000",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: dExtraLargeFontSize16.sp,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 8,
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 18.sp,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("4.5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: dExtraLargeFontSize16.sp,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        productCarousel(context, productDetailController),
        Flexible(child: productTabBar(context, productDetailController))
      ],
    ),
  );
}
