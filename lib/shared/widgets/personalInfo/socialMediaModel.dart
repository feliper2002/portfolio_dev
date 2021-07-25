import 'package:feliper_developer/shared/models/socialMedia.dart';
import 'package:flutter/material.dart';

class SocialMediaModel extends StatelessWidget {
  final Widget? icon;
  final String? url;
  final String? name;
  SocialMediaModel(this.icon, this.url, this.name);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (_, index) {
        return Container();
      },
    );
  }

  final medias = <SocialMedia>[
    SocialMedia(
        'https://github.com/feliper2002', 'Me siga no GitHub', Container()),
    SocialMedia(
        'https://twitter.com/feliper_dev', 'Me siga no Twitter', Container()),
    SocialMedia('', '', Container()),
    SocialMedia('', '', Container()),
    SocialMedia('', '', Container()),
  ];
}
