import 'package:feliper_developer/shared/themes/colors.dart';
import 'package:feliper_developer/shared/widgets/personalInfo/personalInfo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.homeBgColorBlue, AppColors.homeBgColorGrey],
          ),
        ),
        child: Row(
          children: [
            PersonalInfo(),
            VerticalDivider(
                color: Colors.white,
                width: 1,
                thickness: 1,
                indent: 50,
                endIndent: 50),
            // MainBody(),
          ],
        ),
      ),
    );
  }
}
