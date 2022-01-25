import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';

Widget carouselBuilder(context) {
  ///actually i use map instead of Model class because this is just a demo app
  List<Map<String, dynamic>> mList = [
    {
      "id": 1,
      "image": "assets/images/girl_two.png",
      "title": "Something New Testing Something New Test",
      "color": "#000000"
    },
    {
      "id": 1,
      "image": "assets/images/girl_two.png",
      "title": "Something New Testing Something New Testing Something"
    },
    {
      "id": 1,
      "image": "assets/images/girl_two.png",
      "title": "Something New Testing Something New Testing Something N"
    },
    {
      "id": 1,
      "image": "assets/images/girl_two.png",
      "title": "Something New Testing"
    },
    {
      "id": 1,
      "image": "assets/images/girl_two.png",
      "title": "Something New Testing"
    },
    {
      "id": 1,
      "image": "assets/images/girl_two.png",
      "title": "Something New Testing"
    },
  ];

  return Container(
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff45b2d2),
                      Color(0xff1e7178),
                    ],
                  ),
                  // boxShadow: const [
                  //   BoxShadow(
                  //       color: Color(0xff45b2d2),
                  //       blurRadius: 4,
                  //       offset: Offset(0, 3)
                  //   )
                  // ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 16,
                            left: 0,
                            right: 0,
                           bottom: 8,
                            child: Text(
                              mList[index]["title"],

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: dLargeFontSize14.sp,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            child: Container(
                              padding: const EdgeInsets.only(left: 4,right: 4,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white
                              ),
                              child: Row(
                                children:  [
                                   Text("See More",style: TextStyle(color: Theme.of(context).colorScheme.primaryVariant,fontSize: dLargeFontSize14.sp,fontWeight: FontWeight.bold),),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 4,top: 4,bottom: 4,left: 4),
                                    child: CircleAvatar(

                                      backgroundColor: Theme.of(context).primaryColor,
                                      child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 14.sp,),
                                    ),
                                  )
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    )),
                    Image.asset(
                      mList[index]["image"],
                      height: 200.h,
                      width: 200.w,
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),
            );
          }));
}
