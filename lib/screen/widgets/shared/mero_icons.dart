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

class BorderIcon extends StatelessWidget {
  const BorderIcon({
    super.key,
    required this.myIcons,
    required this.onPressed,
    required this.height,
    required this.width,
  });

  final String myIcons;
  final VoidCallback onPressed;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xff363F3B),
              width: 1.2,
            ),
            image: DecorationImage(image: AssetImage(myIcons))),
      ),
    );
  }
}
