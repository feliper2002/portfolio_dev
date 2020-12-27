import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';

AppBar AppBarWidget(String title) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.grey[900],
    title: Column(
      children: [
        Text(
          title,
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
