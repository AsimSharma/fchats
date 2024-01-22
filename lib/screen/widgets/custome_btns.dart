import 'dart:ui';

import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeBtns extends StatelessWidget {
  const CustomeBtns(
      {super.key,
      required this.height,
      this.width = double.infinity,
      this.textColors = kwhite,
      this.bgColors = primaryColors,
      required this.titleText,
      required this.onPressed});

  final double height, width;
  final Color textColors, bgColors;
  final String titleText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: bgColors,
            borderRadius:
                BorderRadius.all(Radius.circular(0.015.toResponsive(context)))),
        child: Center(
            child: Text(
          titleText,
          style: GoogleFonts.cardo(
              fontWeight: FontWeight.w800,
              color: textColors,
              fontSize: 0.015.toResponsive(context)),
        )),
      ),
    );
  }
}
