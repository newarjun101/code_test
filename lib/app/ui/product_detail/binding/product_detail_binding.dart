import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/product_detail/controller/product_detail_controller.dart';

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(ProductDetailController());
  }


}