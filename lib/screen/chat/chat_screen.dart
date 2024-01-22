import 'package:fchats/screen/signin/login_screen.dart';
import 'package:fchats/screen/signup/register_screen.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "ChatsScreen",
              style: context.theme.textTheme.bodyLarge,
            ),
            const Text(
              "login Screen",
            ),
            Text(
              "login Screen",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 0.020.toResponsive(context),
                    letterSpacing: .5),
              ),
            ),
            IconButton(
                onPressed: () {
                  Get.to(() => const SignIn());
                },
                icon: const Icon(Icons.login)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.app_registration)),
            IconButton(
                onPressed: () {
                  Get.to(() => const SignUp());
                },
                icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.app_registration))
          ],
        ),
      ),
    );
  }
}
