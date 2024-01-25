import 'dart:developer';
import 'package:fchats/controller/auth_controller.dart';
import 'package:fchats/screen/signin/login_screen.dart';
import 'package:fchats/screen/signup/widgets/register_form.dart';
import 'package:fchats/screen/widgets/custome_btns.dart';
import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/screen/widgets/shared/custome_inputs.dart';
import 'package:fchats/screen/widgets/shared/login_registe_texttitle.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameEditingCtrl = TextEditingController();
  final emailEditingCtrl = TextEditingController();
  final passwordEditingCtrl = TextEditingController();
  final confirmpasswordEditingCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  final authCtrl = Get.put(AuthControlller());

  @override
  void dispose() {
    nameEditingCtrl.dispose();
    emailEditingCtrl.dispose();
    passwordEditingCtrl.dispose();
    confirmpasswordEditingCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                        child: Column(children: [
                      SizedBox(
                        height: 0.007.h(context),
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
                          headingColorTitle: "Sign up",
                          headingTitle: " with Email",
                          descriptionTitle:
                              "Get chatting with friends and family today by signing up for our chat app!!!",
                        ),
                      ),

                      //Inpusts
                      RegisterForms(
                          formKey: _formKey,
                          nameEditingCtrl: nameEditingCtrl,
                          emailEditingCtrl: emailEditingCtrl,
                          passwordEditingCtrl: passwordEditingCtrl,
                          confirmpasswordEditingCtrl:
                              confirmpasswordEditingCtrl),
                      SizedBox(
                        height: 0.03.h(context),
                      ),

                      CustomeBtns(
                          height: 0.072.h(context),
                          titleText: "Create accounts",
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await authCtrl.signUpUsers(
                                emailEditingCtrl.text,
                                passwordEditingCtrl.text,
                              );
                            } else {
                              log("checked your creidantials!!!");
                            }
                          }),
                      SizedBox(
                        height: 0.01.h(context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Allready have an accounts",
                            style: GoogleFonts.lato(
                                fontSize: 0.015.toResponsive(context),
                                fontWeight: FontWeight.w800,
                                color: context.theme.splashColor),
                          ),
                          TextButton(
                              onPressed: () {
                                Get.to(() => const SignIn());
                              },
                              child: Text(
                                "SignIn",
                                style: GoogleFonts.lato(
                                    fontSize: 0.015.toResponsive(context),
                                    fontWeight: FontWeight.w800,
                                    color: context.theme.primaryColor),
                              )),
                        ],
                      )
                    ]))))));
  }
}
