import 'package:fchats/screen/widgets/shared/custome_inputs.dart';
import 'package:flutter/material.dart';

class RegisterForms extends StatelessWidget {
  const RegisterForms({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.nameEditingCtrl,
    required this.emailEditingCtrl,
    required this.passwordEditingCtrl,
    required this.confirmpasswordEditingCtrl,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController nameEditingCtrl;
  final TextEditingController emailEditingCtrl;
  final TextEditingController passwordEditingCtrl;
  final TextEditingController confirmpasswordEditingCtrl;

  @override
  Widget build(BuildContext context) {
    return Form(
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
              bool emailValid =
                  RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
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
              } else if (value != passwordEditingCtrl.value) {
                return "Confirm_Password and password must be same";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
