import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:portfolio/styles/textsyles.dart';

class SMCard extends StatefulWidget {
  SMCard({
    Key key,
    @required this.iconUrl,
    @required this.iconImage,
    this.label,
  }) : super(key: key);

  String iconUrl;
  String label;
  AssetImage iconImage;
  @override
  _SMCardState createState() => _SMCardState();
}

class _SMCardState extends State<SMCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(
          '${widget.iconUrl}',
          '${widget.label}',
        );
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: widget.iconImage,
          ),
        ),
      ),
    );
  }
}
