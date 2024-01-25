import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';

class MeroIcons extends StatelessWidget {
  const MeroIcons({
    super.key,
    required this.myIcons,
    required this.onPressed,
  });

  final String myIcons;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 0.05.h(context),
        width: 0.1.w(context),
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(myIcons))),
      ),
    );
  }
}
