import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IconsTextButtons extends StatelessWidget {
  const IconsTextButtons(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.height,
      required this.width,
      required this.iconsimages});
  final String iconsimages, title;
  final VoidCallback onPressed;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: context.theme.scaffoldBackgroundColor.withOpacity(0),
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(iconsimages))),
        ),
        Text(
          title,
          style: GoogleFonts.lato(
            color: context.theme.scaffoldBackgroundColor,
            fontSize: 0.018.toResponsive(context),
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
