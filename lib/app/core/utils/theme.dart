import 'package:flutter/material.dart';
import 'package:mm_it_code_test/app/core/utils/default_value.dart';


class StyleTheme {
  ThemeData getTheme() {
    return ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: primaryVariant,
          secondaryVariant: secondaryColor,
          onSecondary: onSecondary,
          primaryVariant: primaryVariant, ///card bg color
          onPrimary: onPrimary,
          ///text  color
        ),

    );
  }
}