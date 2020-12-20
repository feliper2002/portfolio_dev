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
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Container(
          height: 40,
          width: 150,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.label,
              style: mainContainerTextStyle,
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: widget.iconImage,
            ),
          ),
        ),
      ),
    );
  }
}
