import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/contant/Content.dart';

class AppTextStyle {
  static TextStyle headStyle() {
    return GoogleFonts.rubik(fontSize: 15, fontWeight: FontWeight.bold);
  }

  static TextStyle firstStyle() {
    return GoogleFonts.rubik(
        color: orange, fontSize: 25, fontWeight: FontWeight.bold);
  }

  static TextStyle nameText() {
    return GoogleFonts.breeSerif(
      color: orange,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle nameText2() {
    return GoogleFonts.breeSerif(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle aText() {
    return GoogleFonts.crimsonText(color: Colors.white, fontSize: 16);
  }

  static TextStyle aText2() {
    return GoogleFonts.crimsonText(
        color: orange, fontSize: 23, fontWeight: FontWeight.bold);
  }

  static TextStyle aText3() {
    return GoogleFonts.crimsonText(color: Colors.white, fontSize: 21);
  }

  static TextStyle skillText() {
    return GoogleFonts.breeSerif(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headStyle2() {
    return GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.bold);
  }

  static TextStyle headStyle3() {
    return GoogleFonts.rubik(
        fontSize: 18, fontWeight: FontWeight.bold, color: orange);
  }
  // static TextStyle aText4() {
  //   return GoogleFonts.crimsonText(color: Colors.white, fontSize: 13);
  // }
}
