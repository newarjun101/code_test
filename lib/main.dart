import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/utils/router.dart';
import 'app/core/utils/theme.dart';

void main() {
  runApp(const MyApp());

  //   runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => const MyApp(), // Wrap your app
  // ));


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Whole Snack',
      builder: DevicePreview.appBuilder,
      theme: StyleTheme().getTheme(),
      debugShowCheckedModeBanner: false,
       getPages: RoutePage().routePage,
      initialRoute: '/',
    );
  }
}

