import 'dart:developer';

import 'package:fchats/screen/Home/chat_app_home.dart';
import 'package:fchats/screen/signin/login_screen.dart';
import 'package:fchats/screen/widgets/custome_btns.dart';
import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/screen/widgets/shared/custome_inputs.dart';
import 'package:fchats/screen/widgets/shared/login_registe_texttitle.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  //onSubmits

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
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomeInputs(
                              hintText: "Your name",
                              textEditingController: nameEditingCtrl,
                              validators: (value) {
                                if (value == null || value.isEmpty) {
                                  return "name cannot be empty";
                                }
                                return null;
                              },
                            ),
                            CustomeInputs(
                              hintText: "Your email",
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
                            CustomeInputs(
                              hintText: "Password",
                              textEditingController: passwordEditingCtrl,
                              obscureText: true,
                              validators: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password cannot be empty";
                                } else if (value.length < 6) {
                                  return "Password must be gretter than 6";
                                }
                                return null;
                              },
                            ),
                            CustomeInputs(
                              hintText: "Confirm Password",
                              obscureText: true,
                              textEditingController: confirmpasswordEditingCtrl,
                              validators: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Confirm_Password cannot be empty";
                                }
                                // else if (value == passwordEditingCtrl.value) {
                                //   return "Confirm_Password and password must be same";
                                // }
                                return null;
                              },
                            )
                          ],
                        ),
                      ),

                      CustomeBtns(
                          height: 0.072.h(context),
                          titleText: "Create accounts",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.to(const SignIn());
                            } else {
                              log("checked your creidantials!!!");
                            }
                          })
                    ]))))));
  }
}
