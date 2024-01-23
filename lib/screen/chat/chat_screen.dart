import 'package:fchats/controller/auth_controller.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  final authController = Get.find<AuthControlller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                authController.logOut();
              },
              child: Text(
                "LogOut",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 0.020.toResponsive(context),
                      letterSpacing: .5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
