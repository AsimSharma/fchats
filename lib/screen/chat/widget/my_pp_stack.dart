import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileStack extends StatelessWidget {
  const MyProfileStack({
    super.key,
    required this.auth,
  });

  final FirebaseAuth auth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 0.097.h(context),
              width: 0.21.w(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(auth.currentUser!.photoURL ??
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWd2Er6aGk46GpGePsuN9SgkYasGWZfc0L2jtrg4dSenLmtdD7kcWxTKaG0qp1osENax4&usqp=CAU"))),
            ),
            Positioned(
                bottom: 0,
                left: 0.024.toResponsive(context),
                child: Container(
                  decoration: BoxDecoration(
                      color: context.theme.primaryColor,
                      shape: BoxShape.circle),
                  child: const Center(
                      child: Icon(
                    Icons.add,
                    color: kwhite,
                  )),
                )),
          ],
        ),
        Text(
          "Add notes",
          style: GoogleFonts.poppins(
              color: context.theme.splashColor,
              fontSize: 0.015.toResponsive(context)),
        ),
      ],
    );
  }
}
