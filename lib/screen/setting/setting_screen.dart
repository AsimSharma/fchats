import 'dart:io';
import 'dart:developer';
import 'dart:typed_data';

import 'package:fchats/screen/setting/pages/thememode_change.dart';
import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  Uint8List? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding:
              EdgeInsets.symmetric(horizontal: 0.0045.toResponsive(context)),
          child: Column(
            children: [
              BackAppBar(
                onPressed: () {
                  Get.back();
                },
                title: "Me",
              ),
              Stack(
                children: [
                  image != null
                      ? Container(
                          height: 0.18.h(context),
                          width: 0.38.w(context),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: MemoryImage(image!))))
                      : Container(
                          height: 0.18.h(context),
                          width: 0.38.w(context),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(auth
                                          .currentUser!.photoURL ??
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWd2Er6aGk46GpGePsuN9SgkYasGWZfc0L2jtrg4dSenLmtdD7kcWxTKaG0qp1osENax4&usqp=CAU"))),
                        ),
                  Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: context.theme.primaryColor,
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () async {
                              log("heloo from file Pickkers");
                              FilePickerResult? result =
                                  await FilePicker.platform.pickFiles(
                                type: FileType.image,
                              );
                              if (result != null) {
                                File file = File(result.files.single.path!);

                                setState(() {
                                  image = file as Uint8List?;
                                });

                                log(file.toString());
                              } else {
                                log("No file selected");
                              }
                            },
                            icon: const Icon(
                              Icons.camera_enhance_outlined,
                              color: kwhite,
                            )),
                      ))
                ],
              ),
              SizedBox(
                height: 0.0025.h(context),
              ),
              Text(
                auth.currentUser!.displayName ?? "Users1",
                style: GoogleFonts.cabin(
                  textStyle: TextStyle(
                      color: context.theme.splashColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 0.020.toResponsive(context),
                      letterSpacing: .5),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Leave notes",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: context.theme.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 0.014.toResponsive(context),
                        letterSpacing: .5),
                  ),
                ),
              ),
              ListOptionsMenu(
                onPressed: () {
                  Get.to(() => const ThemeModeChangeScreen());
                },
                icons: Icons.dark_mode,
              ),
              ListOptionsMenu(
                onPressed: () {},
                bgColor: Colors.green,
                icons: Icons.airplane_ticket,
                titleText: "Active Status",
                subTitleText: "on",
              ),
              ListOptionsMenu(
                onPressed: () {},
                bgColor: Colors.red,
                icons: Icons.topic,
                titleText: "User Name",
                subTitleText: "bibek@gmail.com",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListOptionsMenu extends StatelessWidget {
  const ListOptionsMenu({
    super.key,
    this.bgColor = kBlack,
    this.titleText = "DarkMode",
    this.subTitleText = "systems",
    required this.onPressed,
    required this.icons,
  });

  final Color bgColor;
  final String titleText, subTitleText;
  final VoidCallback onPressed;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 0.1.h(context),
        width: 1.0.w(context),
        color: context.theme.scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 0.0035.toResponsive(context)),
        child: Row(children: [
          Container(
            height: 0.5.h(context),
            width: 0.135.w(context),
            decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
            child: Center(
                child: Icon(
              icons,
              color: kwhite,
              size: 0.025.toResponsive(context),
            )),
          ),
          SizedBox(
            width: 0.04.w(context),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleText,
                style: GoogleFonts.poppins(
                    color: context.theme.splashColor,
                    fontSize: 0.015.toResponsive(context),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                subTitleText,
                style: GoogleFonts.poppins(
                    color: textDecpC,
                    fontSize: 0.011.toResponsive(context),
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ]),
      ),
    );
  }
}
