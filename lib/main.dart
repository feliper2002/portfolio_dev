import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/portfolio.dart';

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
        title: 'felipe.developer',
      ),
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.blueGrey[600]),
        scaffoldBackgroundColor: Colors.grey[900],
        backgroundColor: Colors.grey[700],
        // shadowColor: Colors.lightBlue,
        primaryColor: Colors.grey[700],
        dividerColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue[800],
        ),
      ),
    );
  }
}
