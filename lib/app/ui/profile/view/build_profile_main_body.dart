import 'package:flutter/material.dart';
import 'package:mm_it_code_test/app/ui/profile/controller/profile_main_controller.dart';
import 'package:mm_it_code_test/app/ui/profile/view/build_chat_style.dart';
import 'package:mm_it_code_test/app/ui/profile/view/build_profile.dart';

Widget buildProfileMainBody (context,ProfileMainController profileMainController) {


  return Column(

    children: [


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildProfile(context, profileMainController),
      ),
      Flexible(child: buildChatStyle(context, profileMainController))
    ],
  );
}

