import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/portfolio.dart';
import 'package:portfolio/styles/themeScheme.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'felipe.developer',
      home: FelipePortfolio(
        title: 'FELIPE DEVELOPER',
      ),
      theme: themeScheme(),
    );
  }
}
