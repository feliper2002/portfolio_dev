import 'package:feliper_developer/shared/models/socialMedia.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class SocialMediaModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        primary: false,
        shrinkWrap: true,
        itemCount: medias.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              html.window.open(medias[index].url!, medias[index].name!);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                medias[index].name!,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }

  final medias = <SocialMedia>[
    SocialMedia(
        'https://github.com/feliper2002', 'Me siga no GitHub', Text('')),
    SocialMedia('https://www.linkedin.com/in/felipe-azevedo-ribeiro/',
        'Me siga no LinkedIn', Text('')),
    SocialMedia(
        'https://twitter.com/feliper_dev', 'Me siga no Twitter', Text('')),
    SocialMedia('https://www.twitch.tv/feliper_dev', 'Me acompanhe na Twitch',
        Text('')),
    SocialMedia(
        'https://dev.to/feliper2002', 'Me acompanhe no Dev.to', Text('')),
  ];
}
