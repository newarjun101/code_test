import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';
import 'package:mm_it_code_test/app/core/widget/app_bar_with_search.dart';
import 'package:mm_it_code_test/app/ui/profile/controller/profile_main_controller.dart';
import 'package:mm_it_code_test/app/ui/profile/view/build_profile_main_body.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
final ProfileMainController profileMainController = Get.find<ProfileMainController>();
    final SizeConfig _sizeConfig = Get.find<SizeConfig>();
    _sizeConfig.init(context);
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWithSearch(sizeConfig: _sizeConfig, leftIcon: "assets/images/search.svg",
          rightIcon: "assets/images/chat.svg", endIcon: "assets/images/notification.svg", title: 'Profile',),
        body: buildProfileMainBody(context, profileMainController)
    );
  }
}
