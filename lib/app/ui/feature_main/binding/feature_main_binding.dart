import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';
import 'package:mm_it_code_test/app/ui/cart/controller/cart_main_controller.dart';
import 'package:mm_it_code_test/app/ui/feature_main/controller/feature_main_controller.dart';
import 'package:mm_it_code_test/app/ui/home/controller/home_main_controller.dart';
import 'package:mm_it_code_test/app/ui/more/controller/more_main_controller.dart';
import 'package:mm_it_code_test/app/ui/product_detail/controller/product_detail_controller.dart';
import 'package:mm_it_code_test/app/ui/profile/controller/profile_main_controller.dart';
import 'package:mm_it_code_test/app/ui/search/controller/search_main_controller.dart';

class FeatureMainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => FeatureMainController());
    Get.lazyPut(() => HomeMainController());
    Get.lazyPut(() => CartMainController());
    Get.lazyPut(() => MoreMainController());
    Get.lazyPut(() => SearchMainController());
    Get.lazyPut(() => ProfileMainController());
    Get.lazyPut(() => SizeConfig());
    Get.lazyPut(() => ProductDetailController());
  }
}
