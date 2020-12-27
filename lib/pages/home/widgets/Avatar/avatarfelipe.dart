import 'package:flutter/material.dart';

class AvatarFelipe extends StatelessWidget {
  var profilePic = AssetImage('lib/assets/images/profilepic.jpg');

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 70,
            backgroundImage: profilePic,
          ),
        ],
      ),
    );
  }
}
