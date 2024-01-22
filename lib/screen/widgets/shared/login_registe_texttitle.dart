import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginRegisterTextTitle extends StatelessWidget {
  const LoginRegisterTextTitle({
    super.key,
    required this.headingTitle,
    required this.descriptionTitle,
    required this.headingColorTitle,
  });

  final String headingColorTitle, headingTitle, descriptionTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.18.h(context),
      width: 0.8.w(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 0.012.h(context),
                        width: 0.18.w(context),
                        color: context.theme.primaryColor,
                      )),
                  Text(
                    headingColorTitle,
                    style: GoogleFonts.cardo(
                      textStyle: TextStyle(
                          color: context.theme.splashColor,
                          fontSize: 0.020.toResponsive(context),
                          fontWeight: FontWeight.w900,
                          letterSpacing: .5),
                    ),
                  ),
                ],
              ),
              Text(
                headingTitle,
                style: GoogleFonts.cardo(
                  textStyle: TextStyle(
                      color: context.theme.splashColor,
                      fontSize: 0.018.toResponsive(context),
                      fontWeight: FontWeight.w900,
                      letterSpacing: .5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.01.h(context),
          ),
          Text(
            descriptionTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.cardo(
              textStyle: TextStyle(
                  color: textDecpC,
                  fontSize: 0.014.toResponsive(context),
                  fontWeight: FontWeight.w400,
                  letterSpacing: .5),
            ),
          ),
        ],
      ),
    );
  }
}
