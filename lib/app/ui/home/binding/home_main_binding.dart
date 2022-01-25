import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/home/controller/home_main_controller.dart';

class HomeMainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeMainController());
  }


}