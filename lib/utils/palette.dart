import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor saBlue = MaterialColor(
    0xff0295AA, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff028699 ),//10%
      100: Color(0xff027788),//20%
      200: Color(0xff016877),//30%
      300: Color(0xff015966),//40%
      400: Color(0xff014b55),//50%
      500: Color(0xff013c44),//60%
      600: Color(0xff012d33),//70%
      700: Color(0xff001e22),//80%
      800: Color(0xff000f11),//90%
      900: Color(0xff000000),//100%
    },
  );
}