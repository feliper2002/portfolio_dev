import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';

class Experiences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      height: 265,
      width: 678,
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              'EXPERIÊNCIAS',
              style: experienceStyle,
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Colors.white,
              indent: 30,
              endIndent: 30,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Text(
                    '• C / C++ - Aulas da faculdade',
                    style: mainContainerTextStyle,
                  ),
                  Text(
                    '• Ainda nenhuma experiência profissional com Flutter',
                    style: mainContainerTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
