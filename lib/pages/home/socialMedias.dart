import 'package:flutter/material.dart';
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
        Expanded(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  html.window.open(
                    'https://github.com/feliper2002',
                    'feliper2002',
                  );
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icons/github.png'),
                    ),
                  ),
                ),
              ),
              Text(
                'GITHUB',
                style: flutterDev_style,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  html.window.open(
                    'https://instagram.com/felipe.developer/',
                    'felipe.developer',
                  );
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icons/instagram.webp'),
                    ),
                  ),
                ),
              ),
              Text(
                'INSTAGRAM',
                style: flutterDev_style,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  html.window.open(
                    'https://www.linkedin.com/in/felipe-azevedo-ribeiro/',
                    'Felipe Azevedo Ribeiro',
                  );
                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: Text(
                    'in',
                    style: linkedinStyle,
                  ),
                ),
              ),
              Text(
                'LINKEDIN',
                style: flutterDev_style,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
