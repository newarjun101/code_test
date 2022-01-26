import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/model/CartModel.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:mm_it_code_test/app/core/widget/ButtonWithIcon.dart';
import 'package:mm_it_code_test/app/ui/cart/controller/cart_main_controller.dart';

Widget cartMainBuildBody(context, CartMainController cartMainController) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Catagories",
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: dExtraLargeFontSize16.sp)),
      const SizedBox(
        height: 8,
      ),
      Flexible(child: cartItemListView(context, cartMainController)),
      const Divider(),
      priceCheckout(context, cartMainController),
    ],
  );
}

Widget cartItemListView(context, CartMainController cartMainController) {
  return ListView.builder(
      itemCount: cartMainController.mCartList.length,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange.withOpacity(0.3)),
                child: Image.asset(
                  cartMainController.mCartList[position].image,
                  height: 80.h,
                  width: 80.h,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cartMainController.mCartList[position].name,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          fontSize: dLargeFontSize14.sp)),
                  Text(cartMainController.mCartList[position].type,
                      style: TextStyle(
                          color: Colors.grey, fontSize: dMediumFontSize12.sp)),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("${cartMainController.mCartList[position].price} \$",
                      style: TextStyle(
                          color: Colors.red, fontSize: dLargeFontSize14.sp)),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: Row(
                      children: [
                        circularIconButton(
                            context,
                            cartMainController,
                            Icons.remove,
                            () => cartMainController.removeData(position,
                                cartMainController.mCartList[position])),
                        const SizedBox(
                          width: 8,
                        ),
                        Obx(() => Text(
                              cartMainController.mCartList[position].count
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: dMediumFontSize12.sp),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        circularIconButton(
                            context,
                            cartMainController,
                            Icons.add,
                            () => cartMainController.addData(position,
                                cartMainController.mCartList[position])),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      });
}

Widget circularIconButton(context, CartMainController cartMainController,
    IconData icon, VoidCallback onPress) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.withOpacity(0.3)),
    padding: const EdgeInsets.all(2.0),
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: onPress,
      child: Icon(
        icon,
        color: Colors.grey,
        size: 12.sp,
      ),
    ),
  );
}

Widget priceCheckout(context, CartMainController cartMainController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total",
            style: TextStyle(
                fontSize: dMediumFontSize12.sp,
                color: Colors.grey,
                letterSpacing: 4),
          ),
          Text(
            "\$ 10000",
            style: TextStyle(
                fontSize: dExtraLargeFontSize16.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Free Delivery",
            style: TextStyle(
              fontSize: dMediumFontSize12.sp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      ButtonWithIcon(
          bgColor: Colors.white,
          titleColor: Colors.grey,
          title: "Checkout",
          icon: Icons.arrow_forward_ios_sharp,
          iconBgColor: Theme.of(context).primaryColor,
          iconColor: Colors.white,
          onClick: () => print("hello wolrd")),
    ],
  );
}
