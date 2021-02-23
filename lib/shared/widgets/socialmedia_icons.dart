import 'package:flutter/material.dart';
import 'dart:html' as html;

class SocialMedia extends StatelessWidget {
  final bool mobile;

  SocialMedia({this.mobile});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Image.asset(
            'assets/github.png',
            fit: BoxFit.cover,
            color: Colors.white,
            height: !mobile ? 30 : 20,
            width: !mobile ? 30 : 20,
          ),
          onTap: () {
            html.window.open('https://github.com/feliper2002/', 'Github');
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            child: Image.asset(
              'assets/twitter.png',
              fit: BoxFit.cover,
              color: Colors.white,
              height: !mobile ? 30 : 20,
              width: !mobile ? 30 : 20,
            ),
            onTap: () {
              html.window.open('https://twitter.com/feliper_dev/', 'Twitter');
            },
          ),
        ),
        InkWell(
          child: Image.asset(
            'assets/linkedin.png',
            fit: BoxFit.cover,
            color: Colors.white,
            height: !mobile ? 30 : 20,
            width: !mobile ? 30 : 20,
          ),
          onTap: () {
            html.window.open(
                'https://www.linkedin.com/in/felipe-azevedo-ribeiro/',
                'Linkedin');
          },
        ),
      ],
    );
  }
}
