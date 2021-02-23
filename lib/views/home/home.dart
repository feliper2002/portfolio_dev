import 'package:feliper_developer/shared/constants/app_consts.dart';
import 'package:feliper_developer/views/mobile/mobile_home.dart';
import '../../shared/widgets/main_body.dart';
import '../../shared/widgets/profilepic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth.toString());
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: backgroundColorsGradient,
            ),
          ),
          child: (constraints.maxWidth > 1060)
              ? Center(
                  child: Container(
                    height: constraints.maxHeight * .7,
                    width: constraints.maxWidth * .8,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProfilePic(constraints: constraints),
                        MainBody(constraints: constraints),
                      ],
                    ),
                  ),
                )
              : MobileHome(),
        );
      }),
    );
  }
}
