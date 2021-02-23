import 'package:feliper_developer/shared/styles/textStyles.dart';
import 'package:feliper_developer/shared/widgets/about_me.dart';
import 'package:feliper_developer/shared/widgets/socialmedia_icons.dart';
import 'package:feliper_developer/shared/widgets/technologies.dart';
import 'package:flutter/material.dart';

class MainMobileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Felipe Ribeiro', style: myNameStyleMobile),
          SocialMedia(mobile: true),
          AboutMe(mobile: true),
          Technologies(),
        ],
      ),
    );
  }
}
