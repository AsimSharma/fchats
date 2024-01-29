import 'package:fchats/screen/widgets/images_with_container.dart';
import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoCalls extends StatelessWidget {
  const VideoCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: 0.0023.toResponsive(context)),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/meroprofile.jpg",
                      ))),
              child: Container(
                color: const Color.fromARGB(178, 255, 255, 255).withOpacity(0),
                child: Column(
                  children: [
                    BackAppBar(onPressed: () {
                      Get.back();
                    }),
                    Align(
                      alignment: Alignment.topRight,
                      child: ImagesContainer(
                        images: videocallImages,
                        height: 0.32.h(context),
                        width: 0.35.w(context),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(children: [
                        Container(
                          height: 0.1.h(context),
                          width: 0.23.w(context),
                          decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage(micIcons)),
                              shape: BoxShape.circle,
                              color: Color.fromARGB(69, 255, 255, 255)),
                        )
                      ]),
                    )
                  ],
                ),
              ))),
    );
  }
}
