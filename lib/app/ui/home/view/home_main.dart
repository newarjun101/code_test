import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';
import 'package:mm_it_code_test/app/core/widget/app_bar_with_search.dart';
import 'package:mm_it_code_test/app/ui/home/view/home_main_build_body.dart';

class HomeMain extends StatelessWidget {
 const HomeMain({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final SizeConfig _sizeConfig = Get.find<SizeConfig>();
    _sizeConfig.init(context);
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return  Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarWithSearch(sizeConfig: _sizeConfig, leftIcon: "assets/images/search.svg",
        rightIcon: "assets/images/chat.svg", endIcon: "assets/images/notification.svg", title: 'Home',),
      body: SingleChildScrollView(child: homeMainBuildBody(context))
    );
  }
}
