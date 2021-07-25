import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;

  const CustomText(this.text, {this.fontSize, this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.pressStart2p(
        color: color,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
    );
  }
}
