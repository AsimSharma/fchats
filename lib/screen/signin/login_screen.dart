import 'dart:developer';
import 'package:fchats/controller/auth_controller.dart';
import 'package:fchats/screen/signin/widgets/login_form.dart';
import 'package:fchats/screen/signup/register_screen.dart';
import 'package:fchats/screen/widgets/custome_btns.dart';
import 'package:fchats/screen/widgets/shared/authentications_icons_btns.dart';
import 'package:fchats/screen/widgets/or_divider.dart';
import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/screen/widgets/shared/custome_inputs.dart';
import 'package:fchats/screen/widgets/shared/login_registe_texttitle.dart';
import 'package:fchats/utils/extension/responsive.dart';

import 'package:fchats/utils/styles/images_links.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailEditingCtrl = TextEditingController();
  final passwordEditingCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    Get.put(AuthControlller());
    super.initState();
  }

  final authCtrl = Get.put(AuthControlller());
  //onSubmits

  @override
  void dispose() {
    emailEditingCtrl.dispose();
    passwordEditingCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final btnIconsLogo = [facebook, googleLogo, appleLogo];
    return Scaffold(
      body: SafeArea(
          child: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 0.012.toResponsive(context),
            right: 0.012.toResponsive(context),
          ),
          color: context.theme.scaffoldBackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 0.015.h(context),
                ),
                BackAppBar(
                  onPressed: () {
                    Get.back();
                  },
                ),
                SizedBox(
                  height: 0.005.h(context),
                ),
                const Center(
                  child: LoginRegisterTextTitle(
                    headingColorTitle: "Log in",
                    headingTitle: " to Chatbox",
                    descriptionTitle:
                        "Welcome back! Sign in using your social account or email to continue us",
                  ),
                ),
                SizedBox(
                  height: 0.005.h(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthenticationsIconsButton(
                      onPressed: () {},
                      btnLogo: btnIconsLogo[0],
                    ),
                    AuthenticationsIconsButton(
                      onPressed: () {
                        authCtrl.signInWithGoogle();
                      },
                      btnLogo: btnIconsLogo[1],
                    ),
                    AuthenticationsIconsButton(
                      onPressed: () {},
                      btnLogo: btnIconsLogo[2],
                    )
                  ],
                ),
                SizedBox(
                  height: 0.032.h(context),
                ),
                const OrWithDivider(),
                SizedBox(
                  height: 0.03.h(context),
                ),
                LoginForm(
                    formKey: _formKey,
                    emailEditingCtrl: emailEditingCtrl,
                    passwordEditingCtrl: passwordEditingCtrl),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => const SignUp());
                      },
                      child: Text(
                        "Forrget_password??",
                        style: GoogleFonts.lato(
                            fontSize: 0.015.toResponsive(context),
                            fontWeight: FontWeight.w800,
                            color: context.theme.primaryColor),
                      )),
                ),
                SizedBox(
                  height: 0.001.h(context),
                ),
                CustomeBtns(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      log(" email:${emailEditingCtrl.text}  pasword:${passwordEditingCtrl.text}");
                      authCtrl.login(
                          email: emailEditingCtrl.text,
                          password: passwordEditingCtrl.text);
                    } else {
                      log("Checked your creidentatiol");
                    }
                  },
                  height: 0.082.h(context),
                  titleText: "Log in",
                ),
                SizedBox(
                  height: 0.01.h(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an accounts??",
                      style: GoogleFonts.lato(
                          fontSize: 0.015.toResponsive(context),
                          fontWeight: FontWeight.w800,
                          color: context.theme.splashColor),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const SignUp());
                        },
                        child: Text(
                          "SignUP",
                          style: GoogleFonts.lato(
                              fontSize: 0.015.toResponsive(context),
                              fontWeight: FontWeight.w800,
                              color: context.theme.primaryColor),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
