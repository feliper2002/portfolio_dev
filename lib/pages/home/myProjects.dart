import 'package:flutter/material.dart';
import 'package:portfolio/models/projects/projectCards.dart';
import 'package:portfolio/pages/home/contacts.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class MyProjects extends StatefulWidget {
  MyProjects({Key key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.lightBlue,
      elevation: 5,
      color: Colors.blueGrey[900],
      child: Container(
        padding: EdgeInsets.only(
          top: 5,
          left: 5,
          right: 5,
        ),
        height: 280,
        width: 700,
        // color: Colors.blueGrey[900],
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '  PROJECTS',
                style: projectsContainer_style,
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
