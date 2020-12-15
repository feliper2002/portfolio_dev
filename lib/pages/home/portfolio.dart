import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/bottomBar.dart';
import 'package:portfolio/pages/home/contacts.dart';
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
            Contacts(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
