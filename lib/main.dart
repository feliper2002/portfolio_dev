import 'package:flutter/material.dart';
import 'views/home/home.dart';
import 'shared/styles/theme.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Felipe Developer',
      theme: themeData(),
      home: HomePage(),
    );
  }
}
