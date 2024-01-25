import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';

class PPStack extends StatelessWidget {
  const PPStack({
    super.key,
    required this.profilePic,
    this.active = true,
    this.height = 62,
    this.width = 62,
  });

  final String profilePic;
  final bool active;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(profilePic))),
      ),
      active == true
          ? Positioned(
              bottom: 0.0001.toResponsive(context),
              right: 0.005.toResponsive(context),
              child: Container(
                height: 0.045.h(context),
                width: 0.045.w(context),
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
              ))
          : const Text("")
    ]);
  }
}
