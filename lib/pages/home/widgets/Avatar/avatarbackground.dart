import 'package:flutter/material.dart';

class AvatarBackground extends StatelessWidget {
  const AvatarBackground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SizedBox(height: 15),
          CircleAvatar(
            radius: 75,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ],
      ),
    );
  }
}
