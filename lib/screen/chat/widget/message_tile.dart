import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    super.key,
    required this.isSender,
    required this.profilePP,
    required this.message,
    required this.messageDate,
  });

  final bool isSender;
  final String profilePP, message, messageDate;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender == true ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(top: 0.015.toResponsive(context)),
        constraints: BoxConstraints(
          minHeight: 0.1.h(context),
          minWidth: 0.6.w(context),
          maxWidth: 0.6.w(context),
        ),
        child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 0.065.h(context),
              maxWidth: 0.6.w(context),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.01.toResponsive(context)),
                    bottomRight: Radius.circular(0.01.toResponsive(context))),
                color: isSender != true
                    ? context.theme.primaryColor
                    : messageTileBgColor),
            child: Center(
                child: Text(
              message,
              style: GoogleFonts.lato(
                  fontSize: 0.022.h(context),
                  fontWeight: FontWeight.w500,
                  color:
                      isSender == false ? kwhite : context.theme.splashColor),
            )),
          ),
          SizedBox(
            height: 0.0025.h(context),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(messageDate,
                style: GoogleFonts.lato(color: context.theme.splashColor)),
          )
        ])),
      ),
    );
  }
}
