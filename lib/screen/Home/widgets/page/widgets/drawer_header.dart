import 'package:fchats/screen/setting/setting_screen.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerHeaders extends StatelessWidget {
  const DrawerHeaders({
    super.key,
    required FirebaseAuth auth,
  }) : _auth = auth;

  final FirebaseAuth _auth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1.h(context),
      width: 1.0.w(context),
      color: context.theme.scaffoldBackgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              height: 0.07.h(context),
              width: 0.2.w(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(_auth.currentUser!.photoURL ??
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWd2Er6aGk46GpGePsuN9SgkYasGWZfc0L2jtrg4dSenLmtdD7kcWxTKaG0qp1osENax4&usqp=CAU"))),
            ),
            Row(
              children: [
                Text(
                  _auth.currentUser!.displayName ?? "Users1",
                  style: GoogleFonts.cabin(
                    textStyle: TextStyle(
                        color: context.theme.splashColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 0.018.toResponsive(context),
                        letterSpacing: .5),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: context.theme.iconTheme.color,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            Get.back();
            Get.to(() => const SettingScreen());
          },
          icon: Icon(
            Icons.settings,
            color: context.theme.iconTheme.color,
          ),
        ),
      ]),
    );
  }
}
