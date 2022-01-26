import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/widget/app_bar_with_back_arrow.dart';
import 'package:mm_it_code_test/app/ui/product_detail/controller/product_detail_controller.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/build_product_detail_body.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_carousel.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_tab_bar.dart';

class ProductDetailMain extends StatelessWidget {
  const ProductDetailMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final productDetailController = Get.find<ProductDetailController>();
    return  ScreenUtilInit(
      builder: () {
        return  Scaffold(
          appBar: AppBarWithBackArrow(endIcon: 'assets/images/cart.svg',title: "Product Detail",itemCount: productDetailController.addToCartItem),
          body: Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: buildProductDetailBody(context,productDetailController),
          )


        );
      }
    );
  }
}
