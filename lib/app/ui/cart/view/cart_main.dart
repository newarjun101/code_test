import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/utils/size_config.dart';
import 'package:mm_it_code_test/app/core/widget/app_bar_with_search.dart';
import 'package:mm_it_code_test/app/ui/cart/controller/cart_main_controller.dart';
import 'package:mm_it_code_test/app/ui/cart/view/cart_main_build_body.dart';

class CartMain extends StatelessWidget {
  const CartMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartMainController cartMainController = Get.find<CartMainController>();
    final SizeConfig _sizeConfig = Get.find<SizeConfig>();
    _sizeConfig.init(context);
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWithSearch(sizeConfig: _sizeConfig, leftIcon: "assets/images/search.svg",
          rightIcon: "assets/images/chat.svg", endIcon: "assets/images/notification.svg", title: '',),
        body: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: cartMainBuildBody(context, cartMainController),
        )
    );
  }
}
