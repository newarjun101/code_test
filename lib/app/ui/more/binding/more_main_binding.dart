import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/more/controller/more_main_controller.dart';

class MoreMainBinding extends Bindings {
  @override
  void dependencies() {

    Get.put(MoreMainController());
  }


}