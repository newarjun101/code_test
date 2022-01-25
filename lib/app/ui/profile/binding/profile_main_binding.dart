import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/profile/controller/profile_main_controller.dart';

class ProfileMainBinding extends Bindings {
  @override
  void dependencies() {

    Get.put(ProfileMainController());
  }


}