import 'package:fchats/screen/call/call.dart';
import 'package:fchats/screen/chat/models/friends_chat_model.dart';
import 'package:fchats/screen/chat/pages/incommig_calls.dart';
import 'package:fchats/screen/chat/pages/video_calls.dart';
import 'package:fchats/screen/widgets/shared/mero_icons.dart';

import 'package:fchats/screen/widgets/shared/profile_stacks.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageAppBar extends StatelessWidget {
  const MessageAppBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.11.h(context),
      width: 1.0.w(context),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back)),
            PPStack(
              profilePic: friendschatslist[index].friendsPP,
              height: 0.075.h(context),
              width: 0.14.w(context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  friendschatslist[index].friendsName,
                  style: GoogleFonts.poppins(
                      color: context.theme.splashColor,
                      fontSize: 0.015.toResponsive(context),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  friendschatslist[index].activeStatus == true
                      ? "Active now"
                      : "",
                  style: GoogleFonts.poppins(
                      color: textDecpC,
                      fontSize: 0.011.toResponsive(context),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              width: 0.012.w(context),
            ),
            MeroIcons(
              myIcons: calls3,
              onPressed: () {
                Get.to(() => const IncommingCalls());
              },
            ),
            SizedBox(
              width: 0.012.w(context),
            ),
            MeroIcons(
                myIcons: viedocall,
                onPressed: () {
                  Get.to(() => const VideoCallScreen());
                })
          ]),
    );
  }
}
