import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class Contacts extends StatelessWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).shadowColor,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 5,
        ),
        color: Theme.of(context).primaryColor,
        height: 100,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' CONTACTS',
                style: projectsContainer_style,
              ),
            ),
            Text(
              'felipe.engcontrole@gmail.com',
              style: contactTextStyle,
            ),
            InkWell(
              onTap: () {
                html.window.open(
                    'https://www.linkedin.com/in/felipe-azevedo-ribeiro/',
                    'felipe-linkedin');
              },
              child: Text(
                '> LINKEDIN <',
                style: contactTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
