import 'package:get/get.dart';

import 'package:mm_it_code_test/app/ui/feature_main/binding/feature_main_binding.dart';
import 'package:mm_it_code_test/app/ui/feature_main/view/feature_main.dart';
import 'package:mm_it_code_test/app/ui/product_detail/binding/product_detail_binding.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_detail_main.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/test_ui.dart';

class RoutePage {
  var routePage = [
    GetPage(
      name: '/',
      page: () => const FeatureMain(),
  binding: FeatureMainBinding()
    ),
    GetPage(
        name: '/product-detail',
        page: () =>  const ProductDetailMain(),
      binding: ProductDetailBinding()

    ),

  ];
}
