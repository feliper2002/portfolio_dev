import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class Contacts extends StatelessWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 5,
        ),
        height: 100,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' CONTATOS',
                style: projectsContainer_style,
              ),
            ),
            Text(
              'feliper.dev@gmail.com',
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
