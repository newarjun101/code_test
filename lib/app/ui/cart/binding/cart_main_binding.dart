import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/cart/controller/cart_main_controller.dart';

class CartMainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(CartMainController());
  }


}