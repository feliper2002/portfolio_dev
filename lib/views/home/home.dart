import 'package:feliper_developer/shared/widgets/info.dart';
import 'package:feliper_developer/shared/widgets/technologies.dart';
import 'package:feliper_developer/views/mobile/mobile_home.dart';
import 'package:feliper_developer/views/widgets/about_me.dart';
import '../../shared/styles/textStyles.dart';
import 'package:flutter/material.dart';
import '../../shared/widgets/socialmedia_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool android;
  bool desktop;

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
          child: (constraints.maxWidth > 1070)
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
                        Container(
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
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                        ),
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
