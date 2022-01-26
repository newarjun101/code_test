import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mm_it_code_test/app/ui/product_detail/controller/product_detail_controller.dart';

final List<String> mImageList = [
  "assets/images/girl_shoe.png",
  "assets/images/girl_shoe.png",
  "assets/images/girl_shoe.png",
  "assets/images/girl_shoe.png",
  "assets/images/girl_shoe.png",
];

Widget productCarousel(
    context, ProductDetailController productDetailController) {
  final CarouselController _controller = CarouselController();
  return Column(
    children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              productDetailController.changeCarousel(index);
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: mImageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Obx(() {
              return Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.orange)
                        .withOpacity(
                            productDetailController.currentIndex.value ==
                                    entry.key
                                ? 0.9
                                : 0.4)),
              );
            }),
          );
        }).toList(),
      ),
    ],
  );
}

final List<Widget> imageSliders = mImageList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(item, fit: BoxFit.fitHeight, width: 400.w)),
        ))
    .toList();
