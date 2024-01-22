import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';

import 'package:flutter/material.dart';

class AuthenticationsIconsButton extends StatelessWidget {
  const AuthenticationsIconsButton(
      {super.key, required this.onPressed, required this.btnLogo});

  final VoidCallback onPressed;
  final String btnLogo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 0.019.toResponsive(context)),
        height: 0.4.h(context),
        width: 0.2.w(context),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: kBlack),
          shape: BoxShape.circle,
        ),
        child: Center(child: Image.asset(btnLogo)),
      ),
    );
  }
}
