import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_book_app/helper/constants.dart';
import 'package:project_book_app/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryMainColor,
        accentColor: kAccendMainColor,
      scaffoldBackgroundColor: kPrimaryMainColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.white,
        brightness: Brightness.light,
        actionsIconTheme: IconThemeData(color: kTextPrimarySubColor),
      ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}
