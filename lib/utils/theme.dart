import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ChatThemeData {
  ChatThemeData._();

  static ThemeData myThemeLight = ThemeData(
      primaryColor: primaryColors,
      splashColor: kBlack,
      scaffoldBackgroundColor: scaffoldColors,
      textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.blue)),

      //app bar
      appBarTheme: const AppBarTheme(
          color: primaryColors,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
          iconTheme: IconThemeData(color: kwhite)),

      //switch button
      switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.resolveWith((states) => kwhite),
          thumbColor: MaterialStateProperty.all(
            kBlack,
          )));

  //darkMode
  static ThemeData myThemeDark = ThemeData(
      primaryColor: primaryColors,
      scaffoldBackgroundColor: scaffoldColorsdark,
      splashColor: kwhite,
      textTheme: const TextTheme(bodyLarge: TextStyle(color: kwhite)),

      //app bar
      appBarTheme: const AppBarTheme(
          color: Colors.white, iconTheme: IconThemeData(color: kBlack)),

      //switch button
      switchTheme: SwitchThemeData(
          trackColor:
              MaterialStateProperty.resolveWith((states) => primaryColors),
          thumbColor: MaterialStateProperty.all(kwhite)));
}
