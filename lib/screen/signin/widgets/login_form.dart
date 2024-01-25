import 'package:fchats/screen/widgets/shared/custome_inputs.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.emailEditingCtrl,
    required this.passwordEditingCtrl,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController emailEditingCtrl;
  final TextEditingController passwordEditingCtrl;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeInputs(
            hintText: "Email",
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
            hintText: "Passwords",
            obscureText: false,
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
        ],
      ),
    );
  }
}
