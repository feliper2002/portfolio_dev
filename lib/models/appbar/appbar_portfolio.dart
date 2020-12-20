import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';

AppBar AppBarWidget() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.grey[900],
    title: Column(
      children: [
        Text(
          'FELIPE DEVELOPER',
          style: appBarstyle,
        ),
        Divider(
          color: Colors.white,
          height: 4,
          thickness: 3,
          indent: 50,
          endIndent: 50,
        ),
      ],
    ),
  );
}
