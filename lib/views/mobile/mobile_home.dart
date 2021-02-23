import 'package:feliper_developer/shared/constants/app_consts.dart';
import 'package:feliper_developer/views/mobile/main_mobile_body.dart';
import 'package:feliper_developer/shared/widgets/profilepic.dart';
import 'package:feliper_developer/views/home/home.dart';
import 'package:flutter/material.dart';

import 'mobile_info_col.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  bool mobile = true;

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
          child: (constraints.maxWidth < 1060)
              ? SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          height: constraints.maxHeight * .7,
                          width: constraints.maxWidth * .9,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ProfilePic(constraints: constraints),
                              MainMobileBody(),
                            ],
                          ),
                        ),
                        MobileInfoColumn(
                          mobileC: mobile,
                          constraints: constraints,
                        ),
                      ],
                    ),
                  ),
                )
              : HomePage(),
        );
      }),
    );
  }
}
