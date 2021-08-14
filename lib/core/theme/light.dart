import 'package:cate/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

mixin ThemeApp {
  static ThemeData get light => ThemeData.light().copyWith(
        primaryColor: HexColor("#6D4BF8"),
        accentColor: HexColor("#282125"),
        backgroundColor: HexColor("#000000"),
        scaffoldBackgroundColor: HexColor("#000000"),
        buttonColor: HexColor("#191414"),
        iconTheme: IconThemeData(color: HexColor("#6D4BF8")),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: HexColor("#6D4BF8"),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(HexColor("#6D4BF8")),
        )),
        textTheme: TextTheme(
          button: TextStyle(
              color: HexColor("#FFF5F5"),
              fontSize: 15,
              fontWeight: FontWeight.bold),
          headline1: TextStyle(
              color: HexColor("#282125"),
              fontSize: 24,
              fontWeight: FontWeight.w600),
          headline2: TextStyle(color: HexColor("#282125"), fontSize: 18),
          headline3: TextStyle(color: HexColor("#282125"), fontSize: 15),
          headline4: TextStyle(color: HexColor("#282125"), fontSize: 12),
        ),
      );
}
