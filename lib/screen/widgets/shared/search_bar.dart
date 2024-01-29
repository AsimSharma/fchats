import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    super.key,
    this.width = double.infinity,
    required this.onChangeValue,
    required this.hintText,
  });

  final double width;
  final dynamic onChangeValue;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.065.h(context),
      width: width,
      // margin: EdgeInsets.only(left: 0.0055.toResponsive(context)),
      decoration: const BoxDecoration(
        color: secondarColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 0.06.h(context),
            width: 0.12.w(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/searchicons.png"),
              ),
            ),
          ),
          SizedBox(
            height: 0.89.h(context),
            width: 0.45.w(context),
            child: Padding(
              padding: EdgeInsets.all(0.0027.toResponsive(context)),
              child: TextField(
                onChanged: onChangeValue,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(
                      color: context.theme.splashColor,
                      fontSize: 0.014.toResponsive(context),
                      fontWeight: FontWeight.w500),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
