import 'package:fchats/screen/call/Models/calls_models.dart';
import 'package:fchats/screen/widgets/shared/mero_icons.dart';
import 'package:fchats/screen/widgets/shared/profile_stacks.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CallsListItems extends StatelessWidget {
  const CallsListItems({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.09.h(context),
      width: 1.0.w(context),
      margin: EdgeInsets.only(top: 0.012.toResponsive(context)),
      child: Row(children: [
        PPStack(profilePic: callsdemo[index].friendspp),
        SizedBox(
          width: 0.02.w(context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              callsdemo[index].friendsName,
              style: GoogleFonts.poppins(
                  color: context.theme.splashColor,
                  fontSize: 0.015.toResponsive(context),
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left
                Container(
                  height: 0.03.h(context),
                  width: 0.48.w(context),
                  child: Row(
                    children: [
                      MeroIcons(
                          myIcons: callsdemo[index].callsTypes ==
                                  CallType.incomming
                              ? incommingCall
                              : callsdemo[index].callsTypes == CallType.outgoing
                                  ? outGoingCall
                                  : dissConnects,
                          onPressed: () {}),
                      Text(
                        callsdemo[index].callsDay,
                        style: GoogleFonts.poppins(
                            color: textDecpC,
                            fontSize: 0.011.toResponsive(context),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 0.012.w(context),
                      ),
                      Text(
                        callsdemo[index].callsIime,
                        style: GoogleFonts.poppins(
                            color: textDecpC,
                            fontSize: 0.011.toResponsive(context),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),

                // SizedBox(
                //   width: 0.15.w(context),
                // ),
                Row(
                  children: [
                    MeroIcons(myIcons: calls3, onPressed: () {}),
                    MeroIcons(myIcons: viedocall, onPressed: () {})
                  ],
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
