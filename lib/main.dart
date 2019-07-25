import 'package:flutter/material.dart';
import './screens/home.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: Color.fromRGBO(145, 180, 47, 1), //or set color with: Color(0xFF0000FF)
  ));
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'iransans',accentColor: Color.fromRGBO(145, 180, 47, 1)),
    title: 'بازار',
    home: Home(),
  ));
}
