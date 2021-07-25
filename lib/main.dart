import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Felipe Developer',
      home: HomePage(),
    );
  }
}
