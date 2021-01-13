import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class ProjectCard extends StatefulWidget {
  ProjectCard({
    Key key,
    @required this.projectUrl,
    @required this.projectName,
    this.projectDescription,
    this.projectImage,
    this.cardColor,
  }) : super(key: key);

  String projectUrl;
  String projectName;
  String projectDescription;
  Image projectImage;
  Color cardColor;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open('${widget.projectUrl}', '${widget.projectName}');
      },
      child: Container(
        height: 200,
        width: 330,
        child: Card(
          color: widget.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                child: widget.projectImage,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 3, right: 3),
                    height: 160,
                    width: 190,
                    child: Text(
                      '${widget.projectDescription}' == null
                          ? ' '
                          : '${widget.projectDescription}',
                      textAlign: TextAlign.start,
                      style: projectsCardAboutTextStyle,
                    ),
                  ),
                  Text(
                    widget.projectName.toUpperCase(),
                    style: projectCard_style,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 45),
                ],
              ),
            ],
          ),
          elevation: 5,
        ),
      ),
    );
  }
}
