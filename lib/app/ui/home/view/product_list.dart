

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/model/ProductModel.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';

Widget productList(context,List<ProductModel> mProductList,String title) {

  return Column(
   crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Text(title,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primaryVariant,
              fontSize: dAppBarTitleFontSize.sp)),
      const SizedBox(height: 8,),

      SizedBox(
        height: 200.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: mProductList.length,
            itemBuilder: (context,position) {


          return Container(
            margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),

              width: 150.w,
              child: Column(
                children: [
                  Image.asset(mProductList[position].image,height: 130.h,width: 120.h,),
                  Text(mProductList[position].name,style: TextStyle(fontSize: dLargeFontSize14.sp,color: Theme.of(context).colorScheme.primaryVariant),),
                  Text("${mProductList[position].price.toString()}\$",
                    style: TextStyle(fontSize: dLargeFontSize14.sp,color: Theme.of(context).colorScheme.primaryVariant,fontWeight: FontWeight.bold),),

                ],
              ));
        }),
      )

    ],
  );
}