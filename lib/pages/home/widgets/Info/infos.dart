import 'package:flutter/material.dart';
import 'experiences.dart';
import 'technologies.dart';

class OtherInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Technologies(),
        Expeciences(),
      ],
    );
  }
}
