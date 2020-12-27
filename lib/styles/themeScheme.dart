import 'package:flutter/material.dart';

ThemeData themeScheme() => ThemeData(
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.blueGrey[600]),
      scaffoldBackgroundColor: Colors.grey[900],
      backgroundColor: Colors.grey[700],
      // shadowColor: Colors.lightBlue,
      primaryColor: Colors.grey[700],
      dividerColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue[800],
      ),
    );
