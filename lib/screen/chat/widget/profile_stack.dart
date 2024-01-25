import 'package:fchats/screen/chat/models/friends_chat_model.dart';
import 'package:fchats/screen/widgets/shared/profile_stacks.dart';
import 'package:fchats/utils/extension/responsive.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsProfileStack extends StatelessWidget {
  const FriendsProfileStack({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    String friendsName = friendschatslist[index].friendsName;
    String fname = friendsName.split(' ')[0];
    return Column(
      children: [
        PPStack(
          profilePic: friendschatslist[index].friendsPP,
          height: 0.09.h(context),
          width: 0.2.w(context),
        ),
        Text(
          fname,
          style: GoogleFonts.poppins(
              color: context.theme.splashColor,
              fontSize: 0.015.toResponsive(context)),
        )
      ],
    );
  }
}
