import 'package:feliper_developer/shared/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData? themeData() {}

class AppTheme {
  static TextStyle get mainTextStyle => GoogleFonts.pressStart2p(
        fontSize: 16,
        color: AppColors.mainTextColor,
      );
}
