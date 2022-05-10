import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    fontFamily: 'SF-Regular',
    colorScheme:const ColorScheme.light(
          primary: Color(0xff1A87DD),

          secondary: Color(0xffF8BB18),
          
        ),
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    colorScheme:const ColorScheme.dark(
          primary: Color(0xff1A87DD),
          
        ),
  );

  static Color firstColor = Color.fromARGB(173, 255, 255, 255);
  static Color secondColor = Colors.white;
}