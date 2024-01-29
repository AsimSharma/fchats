import 'dart:ui';

import 'package:fchats/screen/chat/widget/iconstext_btn.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IncommingCalls extends StatelessWidget {
  const IncommingCalls({super.key});

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
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color:
                        const Color.fromARGB(178, 255, 255, 255).withOpacity(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 0.23.h(context),
                              width: 0.35.w(context),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/profile1.png")))),
                        ),
                        Text(
                          "Bibek chhetri",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 0.015.toResponsive(context),
                            color: context.theme.scaffoldBackgroundColor,
                          ),
                        ),
                        Text(
                          "Incomming calls",
                          style: GoogleFonts.cardo(
                            fontWeight: FontWeight.w500,
                            fontSize: 0.015.toResponsive(context),
                            color: context.theme.scaffoldBackgroundColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconsTextButtons(
                              onPressed: () {},
                              height: 0.1.h(context),
                              width: 0.25.w(context),
                              iconsimages: alaram,
                              title: "Remind me",
                            ),
                            IconsTextButtons(
                              height: 0.1.h(context),
                              width: 0.25.w(context),
                              onPressed: () {},
                              iconsimages: messageIcons,
                              title: "Message",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 0.12.h(context),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 0.023.toResponsive(context)),
                          height: 0.09.h(context),
                          width: 1.0.w(context),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(36, 255, 255, 255),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(0.20.toResponsive(context)))),
                          child: Row(children: [
                            Container(
                              height: 0.09.h(context),
                              width: 0.25.w(context),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(callGreenIcons))),
                            ),
                            Text(
                              "slide to answer",
                              style: GoogleFonts.cabin(
                                  color: kwhite,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 0.015.toResponsive(context)),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
