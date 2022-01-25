import 'package:flutter/material.dart';
import 'package:mm_it_code_test/app/core/model/ProductModel.dart';
import 'package:mm_it_code_test/app/ui/home/view/caraousel_builder.dart';
import 'package:mm_it_code_test/app/ui/home/view/home_main_catagory.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/ui/home/view/product_list.dart';
List<ProductModel> mProductList = [
  
  ProductModel(id: 1, image: "assets/images/boy_shoe.png", name: "Nike Shoes", price: 1200),
  ProductModel(id: 2, image: "assets/images/baggy.png", name: "Nike Shoes", price: 1200),
  ProductModel(id: 3, image: "assets/images/girl_shoe.png", name: "Nike Shoes", price: 1200),
  ProductModel(id: 4, image: "assets/images/baggy.png", name: "Nike Shoes", price: 1200),
  ProductModel(id: 5, image: "assets/images/boy_shoe.png", name: "Nike Shoes", price: 1200),
];
    Widget homeMainBuildBody(BuildContext context) {
  return Column(
    children: [
      homeMainCatagory(context),
      Container(
          height: 200.h,
          width: double.infinity,
          child: carouselBuilder(context)),
      const SizedBox(
        height: 8,
      ),
      productList(context, mProductList, "Popular Product"),
      const SizedBox(
        height: 8,
      ),
      productList(context, mProductList, "Recommed Product"),

    ],
  );
}
