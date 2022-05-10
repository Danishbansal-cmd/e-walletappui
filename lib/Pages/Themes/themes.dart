import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    fontFamily: 'SF-Regular',
    colorScheme:const ColorScheme.light(
          primary: Color(0xff1A87DD),

          secondary: Color(0xffF8BB18),
          
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
                  color: MyTheme.secondColor,
                  fontSize: 16,
                ),
        ),
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    colorScheme:const ColorScheme.dark(
          primary: Color(0xff1A87DD),
          
        ),
  );

  static Color firstColor = Color.fromARGB(173, 255, 255, 255);
  static Color secondColor = Colors.white;
  static Color thirdColor = Colors.black;
  static Color fourthColor = Colors.grey.shade500;
}