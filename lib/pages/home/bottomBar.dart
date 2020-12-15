import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 10,
          width: double.infinity,
          color: Colors.transparent,
        ),
        Divider(
          color: Colors.white,
          height: 4,
          thickness: 3,
          indent: 50,
          endIndent: 50,
        ),
        SizedBox(height: 15),
        Container(
          child: Center(
            child: Text(
              'Site desenvolvido por Felipe Ribeiro. 2020',
              style: creditsTextStyle,
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
