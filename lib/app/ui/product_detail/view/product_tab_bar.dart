import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/core/model/ReviewModel.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';
import 'package:mm_it_code_test/app/core/widget/ButtonWithIcon.dart';
import 'package:mm_it_code_test/app/ui/product_detail/controller/product_detail_controller.dart';

List<Color> colors = const [
  Color(0xff023e8a),
  Color(0xff023047),
  Color(0xffe07a5f),
  Color(0xff006d77),
  Color(0xff272640)
];

List<String> size = ["5.6", "5.8", "7.0", "7.7"];

List<ReviewModel> mReviewList = [
  ReviewModel(
      id: 1,
      name: "Nolan",
      comment: "This proudct is one of the best project =",
      date: "25 Jan 2022",
      image: [
        "assets/images/girl_shoe.png",
        "assets/images/boy_shoe.png",
        "assets/images/baggy.png",
        "assets/images/girl_shoe.png",
        "assets/images/girl_shoe.png",
        "assets/images/boy_shoe.png",
        "assets/images/baggy.png",
        "assets/images/girl_shoe.png"
      ],
      rating: 4),
  ReviewModel(
      id: 1,
      name: "Nolan",
      comment: "This proudct is one of the best project =",
      date: "25 Jan 2022",
      image: [
        "assets/images/girl_shoe.png",
        "assets/images/boy_shoe.png",
        "assets/images/baggy.png",
        "assets/images/girl_shoe.png"
      ],
      rating: 3),
  ReviewModel(
      id: 1,
      name: "Nolan",
      comment: "This proudct is one of the best project someting test",
      date: "25 Jan 2022",
      image: [
        "assets/images/girl_shoe.png",
        "assets/images/boy_shoe.png",
        "assets/images/baggy.png",
        "assets/images/girl_shoe.png"
      ],
      rating: 2),
];

Widget productTabBar(
    BuildContext context, ProductDetailController productDetailController) {
  TabController? controller;

  return DefaultTabController(
    length: 3,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(
                fontSize: dLargeFontSize14.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'helvetica'),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(
                fontSize: dLargeFontSize14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'helvetica'),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Theme.of(context).primaryColor),
            tabs: [
              SizedBox(
                  width: 60.w,
                  height: 30.h,
                  child: const Tab(text: "Products")),
              SizedBox(
                  width: 60.w, height: 30.h, child: const Tab(text: "Detail")),
              SizedBox(
                  width: 60.w, height: 30.h, child: const Tab(text: "Reviews")),
            ]),
        Flexible(
          //Add this to give height

          child: TabBarView(children: [

            productTabView(context, productDetailController),
            const Text("No Data Here"),
            reviewTabView(context, productDetailController),
          ]),
        ),
      ],
    ),
  );
}

Widget productTabView(
    context, ProductDetailController productDetailController) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        height: 8,
      ),
      Text("Select Color",
          style: TextStyle(
              color: Colors.grey,
              fontSize: dLargeFontSize14.sp,
              fontWeight: FontWeight.bold)),
      const SizedBox(
        height: 8,
      ),
      Container(
          alignment: Alignment.center,
          height: 50.h,
          width: double.infinity,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: colors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, position) {
                return Center(
                  child: GestureDetector(
                    onTap: () =>
                        productDetailController.onColorSelected(position),
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: colors[position],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: colors[position],
                                blurRadius: 2,
                                offset: const Offset(1, 1))
                          ]),
                      child: Center(
                        child: Obx(
                          () => Icon(
                            Icons.check_rounded,
                            color: productDetailController.colorSelectedIndex ==
                                    position.obs
                                ? Colors.white
                                : Colors.transparent,
                            size: 24.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              })),
      const SizedBox(
        height: 16,
      ),
      Text("Select Size(Us)",
          style: TextStyle(
              color: Colors.grey,
              fontSize: dLargeFontSize14.sp,
              fontWeight: FontWeight.bold)),
      const SizedBox(
        height: 8,
      ),
      Container(
          alignment: Alignment.center,
          height: 60.h,
          width: double.infinity,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: size.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, position) {
                return Center(
                  child: GestureDetector(
                    onTap: () =>
                        productDetailController.onTextSelected(position),
                    child: Container(
                      height: 40.h,
                      width: 60.h,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                offset: Offset(1, 1))
                          ]),
                      child: Center(
                        child: Obx(
                          () => Text(
                            size[position],
                            style: TextStyle(
                                color:
                                    productDetailController.textSelectedIndex ==
                                            position.obs
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                fontSize: dLargeFontSize14.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              })),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWithIcon(
              bgColor: Colors.white,
              titleColor: Colors.grey,
              title: "Add Wishlist",
              icon: Icons.arrow_upward,
              iconBgColor: Theme.of(context).primaryColor,
              iconColor: Colors.white,
              onClick: () => print("hello wolrd")),
          const SizedBox(
            width: 16,
          ),
          ButtonWithIcon(
              bgColor: Theme.of(context).primaryColor,
              titleColor: Colors.white,
              title: "Add To Cart",
              icon: Icons.arrow_forward_ios_sharp,
              iconBgColor: Colors.white,
              iconColor: Theme.of(context).primaryColor,
              onClick: () => productDetailController.onAddToCartClick())
        ],
      )
    ],
  );
}

Widget reviewTabView(context, ProductDetailController productDetailController) {
  return ListView.builder(
      itemCount: mReviewList.length,
      itemBuilder: (context, position) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                  color: const Color(0xff219ebc).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "HE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: dExtraLargeFontSize16.sp,
                      color: const Color(0xff219ebc)),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        mReviewList[position].date,
                        style: TextStyle(
                            color: Colors.grey, fontSize: dMediumFontSize12.sp),
                      )),
                  Text(
                    mReviewList[position].name,
                    style: TextStyle(
                        color: Colors.black, fontSize: dLargeFontSize14.sp),
                  ),
                  Text(
                    mReviewList[position].comment,
                    style: TextStyle(
                        color: Colors.grey, fontSize: dMediumFontSize12.sp),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  RatingBar.builder(
                    itemSize: 20.h,
                    initialRating:
                        double.parse(mReviewList[position].rating.toString()),
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    height: 70.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: mReviewList[position]
                          .image
                          .map((e) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                margin: const EdgeInsets.all(4.0),
                                padding: const EdgeInsets.all(4),
                                child: Image.asset(
                                  e,
                                  fit: BoxFit.fitHeight,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      });
}
