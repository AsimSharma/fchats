import 'dart:developer';

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

  //onSubmits

  @override
  void dispose() {
    emailEditingCtrl.dispose();
    passwordEditingCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final btnIconsLogo = [appleLogo, facebook, googleLogo];
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
              // crossAxisAlignment: CrossAxisAlignment.center,
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
                socialIconsbtns(context, btnIconsLogo),
                SizedBox(
                  height: 0.032.h(context),
                ),
                const OrWithDivider(),
                SizedBox(
                  height: 0.03.h(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeInputs(
                      hintText: "Email",
                      textEditingController: emailEditingCtrl,
                      validators: (value) {
                        bool emailValid = RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value);
                        if (value == null || value.isEmpty) {
                          return "email cannot be empty";
                        } else if (!emailValid) {
                          return "checke Your Email is not valid";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                CustomeInputs(
                  hintText: "Passwords",
                  obscureText: true,
                  textEditingController: passwordEditingCtrl,
                  validators: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password must be gretter than 6";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 0.02.h(context),
                ),
                CustomeBtns(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(const SignUp());
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
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.lato(
                          fontSize: 0.015.toResponsive(context),
                          fontWeight: FontWeight.w800,
                          color: context.theme.primaryColor),
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }

  SizedBox socialIconsbtns(BuildContext context, List<String> btnIconsLogo) {
    return SizedBox(
        height: 0.068.h(context),
        width: 0.8.w(context),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: btnIconsLogo.length,
          itemBuilder: (context, index) {
            return AuthenticationsIconsButton(
              onPressed: () {},
              btnLogo: btnIconsLogo[index],
            );
          },
        ));
  }
}
