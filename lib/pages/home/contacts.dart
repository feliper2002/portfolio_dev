import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';

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
        height: 70,
        width: 500,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' CONTACT',
                style: projectsContainer_style,
              ),
            ),
            Text(
              'felipe.engcontrole@gmail.com',
              style: contactTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
