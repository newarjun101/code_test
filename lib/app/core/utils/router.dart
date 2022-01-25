import 'package:get/get.dart';

import 'package:mm_it_code_test/app/ui/feature_main/binding/feature_main_binding.dart';
import 'package:mm_it_code_test/app/ui/feature_main/view/feature_main.dart';

class RoutePage {
  var routePage = [
    GetPage(
      name: '/',
      page: () => const FeatureMain(),
  binding: FeatureMainBinding()
    ),

  ];
}
