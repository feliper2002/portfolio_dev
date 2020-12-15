import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/bottomBar.dart';
import 'package:portfolio/pages/home/myProjects.dart';
import 'package:portfolio/pages/home/studiesAndTech.dart';
import 'package:portfolio/models/appbar/appbar_portfolio.dart';
import 'package:portfolio/styles/textsyles.dart';

class FelipePortfolio extends StatefulWidget {
  FelipePortfolio({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _FelipePortfolioState createState() => _FelipePortfolioState();
}

class _FelipePortfolioState extends State<FelipePortfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            StudiesAndTechnology(),
            SizedBox(
              height: 20,
            ),
            MyProjects(),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              color: Colors.blueGrey[900],
              child: Container(
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 5,
                ),
                color: Colors.blueGrey[900],
                height: 70,
                width: 500,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' CONTACT',
                        style: projectsContainer_style,
                      ),
                    ),
                    Text(
                      'felipe.engcontrole@gmail.com',
                      style: contactTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
