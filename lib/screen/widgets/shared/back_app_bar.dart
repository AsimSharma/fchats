import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({
    super.key,
    required this.onPressed,
    this.title = "",
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_back)),
        SizedBox(
          width: 0.012.w(context),
        ),
        Text(
          title,
          style: GoogleFonts.cabin(
              fontSize: 0.020.toResponsive(context),
              color: context.theme.splashColor,
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
