import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/search/controller/search_main_controller.dart';

class SearchMainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SearchMainController());
  }


}