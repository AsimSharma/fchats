import 'package:fchats/controller/theme_controller.dart';
import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/utils/extension/responsive.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeModeChangeScreen extends StatefulWidget {
  const ThemeModeChangeScreen({super.key});

  @override
  State<ThemeModeChangeScreen> createState() => _ThemeModeChangeScreenState();
}

class _ThemeModeChangeScreenState extends State<ThemeModeChangeScreen> {
  bool selectedRadio = false;
  String selectedOption = 'off';
  final themeCtl = Get.put(ThemeCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              BackAppBar(
                onPressed: () {
                  Get.back();
                },
                title: "DarkMode",
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'off',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    "off",
                    style: GoogleFonts.poppins(
                        color: context.theme.splashColor,
                        fontSize: 0.013.toResponsive(context),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'on',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    "on",
                    style: GoogleFonts.poppins(
                        color: context.theme.splashColor,
                        fontSize: 0.013.toResponsive(context),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'system',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    "system",
                    style: GoogleFonts.poppins(
                        color: context.theme.splashColor,
                        fontSize: 0.013.toResponsive(context),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Text(
                "Switch Theme",
                style: GoogleFonts.poppins(
                    color: context.theme.primaryColor,
                    fontSize: 0.014.toResponsive(context),
                    fontWeight: FontWeight.w700),
              ),
              Obx(
                () => Switch(
                  value: themeCtl.currentTheme.value == ThemeMode.dark,
                  onChanged: (value) {
                    themeCtl.switchTheme();
                    Get.changeThemeMode(themeCtl.currentTheme.value);
                  },
                  activeColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
