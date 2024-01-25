import 'package:fchats/screen/chat/widget/profile_stack.dart';
import 'package:fchats/screen/widgets/shared/profile_stacks.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsMessageListTile extends StatelessWidget {
  const FriendsMessageListTile({
    super.key,
    this.bgColor = kBlack,
    required this.friendsName,
    required this.lastMessage,
    required this.onPressed,
    required this.index,
    this.activeStatus = true,
    required this.messagedate,
    required this.friendsPP,
  });

  final Color bgColor;
  final String friendsName, lastMessage, friendsPP;
  final VoidCallback onPressed;
  final int index;
  final bool activeStatus;
  final String messagedate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 0.1.h(context),
        width: 1.0.w(context),
        color: context.theme.scaffoldBackgroundColor,
        child: Row(children: [
          PPStack(
            profilePic: friendsPP,
            active: activeStatus,
            height: 0.08.h(context),
            width: 0.18.w(context),
          ),
          SizedBox(
            width: 0.03.w(context),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                friendsName,
                style: GoogleFonts.poppins(
                    color: context.theme.splashColor,
                    fontSize: 0.015.toResponsive(context),
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    "$lastMessage.",
                    style: GoogleFonts.poppins(
                        color: textDecpC,
                        fontSize: 0.011.toResponsive(context),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 0.012.w(context),
                  ),
                  Text(
                    messagedate,
                    style: GoogleFonts.poppins(
                        color: textDecpC,
                        fontSize: 0.011.toResponsive(context),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
