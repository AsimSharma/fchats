import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({
    super.key,
    required this.images,
    required this.height,
    required this.width,
  });

  final String images;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(width: 1, color: kwhite),
          borderRadius:
              BorderRadius.all(Radius.circular(0.002.toResponsive(context))),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage(videocallImages))),
    );
  }
}
