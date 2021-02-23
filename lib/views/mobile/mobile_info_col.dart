import 'package:feliper_developer/shared/widgets/info.dart';
import 'package:flutter/material.dart';

class MobileInfoColumn extends StatelessWidget {
  final bool mobileC;
  final BoxConstraints constraints;

  const MobileInfoColumn({Key key, this.mobileC, this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: mobileC ? 30 : 1),
      height: constraints.maxHeight * .7,
      width: constraints.maxWidth * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        children: [
          myInfo(constraints, mobile: true),
        ],
      ),
    );
  }
}
