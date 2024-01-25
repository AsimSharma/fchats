import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFeilds extends StatelessWidget {
  const MyTextFeilds({
    super.key,
    this.onChagesValues,
    required this.bgColors,
    required this.hintText,
  });

  final dynamic onChagesValues;
  final Color bgColors;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.19.h(context),
      width: 0.55.w(context),
      child: TextField(
        onChanged: onChagesValues,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.lato(
              color: context.theme.splashColor,
              fontSize: 0.014.toResponsive(context),
              fontWeight: FontWeight.w500),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
