import 'package:feliper_developer/shared/styles/textStyles.dart';
import '../../shared/widgets/info.dart';
import '../../shared/widgets/socialmedia_icons.dart';
import '../../shared/widgets/technologies.dart';
import 'package:flutter/material.dart';
import 'about_me.dart';

class MainBody extends StatelessWidget {
  final BoxConstraints constraints;

  const MainBody({Key key, this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Felipe Ribeiro', style: myNameStyle),
                SocialMedia(mobile: false),
                AboutMe(mobile: false),
                Technologies(),
              ],
            ),
          ),
          myInfo(constraints, mobile: false),
        ],
      ),
    );
  }
}
