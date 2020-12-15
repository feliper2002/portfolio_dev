import 'package:flutter/material.dart';
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
    this.cardShadowColor,
  }) : super(key: key);

  String projectUrl;
  String projectName;
  String projectDescription;
  Image projectImage;
  Color cardColor;
  Color cardShadowColor;

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
          shadowColor: widget.cardShadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 5, top: 3, right: 3),
                height: 160,
                width: 130,
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
          elevation: 5,
        ),
      ),
    );
  }
}
