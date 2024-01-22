import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrWithDivider extends StatelessWidget {
  const OrWithDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MyDivider(),
        SizedBox(
          width: 0.02.w(context),
        ),
        Text(
          "OR",
          style: GoogleFonts.lato(
            color: context.theme.splashColor,
            fontWeight: FontWeight.w600,
            fontSize: 0.015.toResponsive(context),
          ),
        ),
        SizedBox(
          width: 0.02.w(context),
        ),
        const MyDivider(),
      ],
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: dividerColors,
      ),
    );
  }
}
