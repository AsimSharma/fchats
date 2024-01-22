import 'package:fchats/screen/signup/register_screen.dart';
import 'package:fchats/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fChats',
      // themeMode: ThemeMode.system,
      theme: ChatThemeData.myThemeLight,
      darkTheme: ChatThemeData.myThemeDark,

      home: const SignUp(),
    );
  }
}
