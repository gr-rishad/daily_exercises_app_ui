import 'package:daily_excerises_app/constants.dart';
import 'package:flutter/material.dart';
import './constants.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme().apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    ),
  );
}
