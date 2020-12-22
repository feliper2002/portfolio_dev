import 'package:flutter/material.dart';
import 'package:portfolio/models/socialMedia/socialMediaIcon.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class SocialMedias extends StatelessWidget {
  const SocialMedias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SMCard(
          iconUrl: 'https://github.com/feliper2002',
          label: '  GITHUB',
          iconImage: AssetImage('lib/assets/icons/github.png'),
        ),
        SMCard(
          iconUrl: 'https://instagram.com/felipe.developer/',
          label: '   INSTAGRAM',
          iconImage: AssetImage('lib/assets/icons/instagram.webp'),
        ),
      ],
    );
  }
}