import 'package:cate/core/utils/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin ThemeApp {
  static ThemeData get light => ThemeData.light().copyWith(
        primaryColor: HexColor("#6D4BF8"),
        accentColor: HexColor("#FFFFFF"),
        hintColor: HexColor("#A6A5AA"),
        shadowColor: HexColor("##EDEDED"),
        backgroundColor: HexColor("#000000"),
        scaffoldBackgroundColor: HexColor("#000000"),
        buttonColor: HexColor("#6D4BF8"),
        iconTheme: IconThemeData(color: HexColor("#6D4BF8")),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: HexColor("#6D4BF8"),
          ),
        ),
        textTheme: TextTheme(
          button: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
              color: HexColor("#FFFFFF"),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          headline1: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
              color: HexColor("#FFFFFF"),
              fontSize: 40,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          headline2: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
                color: HexColor("#FFFFFF"),
                fontWeight: FontWeight.w400,
                fontSize: 20,
                height: 1.2,
                letterSpacing: 1),
          ),
          headline3: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
                color: HexColor("#FFFFFF"),
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.2,
                letterSpacing: 1),
          ),
          headline4: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
              color: HexColor("#FFFFFF"),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          headline5: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: HexColor("#000000"),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ),
      );
}
