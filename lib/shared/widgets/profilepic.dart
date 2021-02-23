import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final BoxConstraints constraints;

  const ProfilePic({Key key, this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: constraints.maxHeight,
      width: constraints.maxWidth * .2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage(
            'assets/profilepic.jpeg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
