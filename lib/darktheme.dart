import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  iconTheme: IconThemeData(color: Colors.black),
  useMaterial3: true,
  brightness: Brightness.dark,
    backgroundColor: Colors.black,
  colorScheme: ColorScheme.dark(
    background: Colors.grey,
    primary: Colors.black,
    secondary: Colors.black,

  ),
);


ThemeData light = ThemeData(
useMaterial3: true,
brightness: Brightness.light,
backgroundColor: Colors.white,
colorScheme: ColorScheme.fromSeed(seedColor:Colors.white,primary: CupertinoColors.white,
    secondary: CupertinoColors.white,
    background: CupertinoColors.systemBackground),

);
