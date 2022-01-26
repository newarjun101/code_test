import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_carousel.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_tab_bar.dart';

Widget buildProductDetailBody(BuildContext context,productDetailController) {

  return Container(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("\$2000",
            style: TextStyle(
                color: Colors.black,
                fontSize: dAppBarTitleFontSize.sp,fontWeight: FontWeight.bold)),
       const SizedBox(
         height: 8,
       ),
       productCarousel(context, productDetailController),

        Flexible(child: productTabBar(context,productDetailController))

      ],
    ),
  );
}

