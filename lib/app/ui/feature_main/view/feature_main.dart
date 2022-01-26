import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/cart/view/cart_main.dart';
import 'package:mm_it_code_test/app/ui/feature_main/controller/feature_main_controller.dart';
import 'package:mm_it_code_test/app/ui/home/view/home_main.dart';
import 'package:mm_it_code_test/app/ui/more/view/more_main.dart';
import 'package:mm_it_code_test/app/ui/product_detail/view/product_detail_main.dart';
import 'package:mm_it_code_test/app/ui/profile/view/profile_main.dart';
import 'package:mm_it_code_test/app/ui/search/view/search_main.dart';

import 'build_bottom_navbar_feature.dart';

class FeatureMain extends StatelessWidget {
  const FeatureMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FeatureMainController mFeatureController =
        Get.find<FeatureMainController>();
    return ScreenUtilInit(
        builder: () => Obx(() => Scaffold(
              body: IndexedStack(
                children: const [
                  HomeMain(),
                ProductDetailMain(),
                  CartMain(),
                  ProfileMain(),
                  MoreMain()
                ],
                index: mFeatureController.currentIndex.value,
              ),
              bottomNavigationBar: BuildButtonNavBarFeature(
                featureMainController: mFeatureController,
              ),
            )));
  }
}
