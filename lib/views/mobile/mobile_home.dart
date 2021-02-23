import 'package:feliper_developer/shared/styles/textStyles.dart';
import 'package:feliper_developer/shared/widgets/info.dart';
import 'package:feliper_developer/shared/widgets/socialmedia_icons.dart';
import 'package:feliper_developer/shared/widgets/technologies.dart';
import 'package:feliper_developer/views/home/home.dart';
import 'package:feliper_developer/views/widgets/about_me.dart';
import 'package:flutter/material.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  bool mobileC = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth.toString()); // 1366 ---- 811
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue,
                Colors.blue[700],
                Colors.blue[900],
              ],
            ),
          ),
          child: (constraints.maxWidth < 1366)
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
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                height: constraints.maxHeight,
                                width: constraints.maxWidth * .3,
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
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Felipe Ribeiro',
                                        style: myNameStyleMobile),
                                    SocialMedia(mobile: true),
                                    AboutMe(mobile: true),
                                    Technologies(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 30, bottom: mobileC ? 30 : 1),
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
