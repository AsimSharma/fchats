import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeInputs extends StatelessWidget {
  const CustomeInputs({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.textEditingController,
    required this.validators,
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;
  final dynamic validators;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.0.w(context),
      height: 0.11.h(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hintText,
            style: GoogleFonts.lato(
                color: context.theme.primaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 0.015.toResponsive(context)),
          ),
          Expanded(
            child: Container(
              height: 0.11.h(context),
              width: 1.0.w(context),
              child: TextFormField(
                controller: textEditingController,
                validator: validators,
                obscureText: obscureText == true ? true : false,
                decoration: const InputDecoration(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
