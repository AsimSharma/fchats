import 'package:fchats/screen/widgets/shared/mero_icons.dart';
import 'package:fchats/screen/widgets/shared/my_text_feilds.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageBottomNavigations extends StatelessWidget {
  const MessageBottomNavigations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.11.h(context),
      width: 1.0.w(context),
      padding: EdgeInsets.symmetric(horizontal: 0.007.toResponsive(context)),
      color: context.theme.scaffoldBackgroundColor,
      child: Row(children: [
        MeroIcons(myIcons: path, onPressed: () {}),
        Expanded(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 0.007.toResponsive(context)),
            decoration: BoxDecoration(
                color: secondarColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(0.04.toResponsive(context)))),
            height: 0.075.h(context),
            child: Row(
              children: [
                Expanded(
                  child: MyTextFeilds(
                    onChagesValues: (value) {},
                    bgColors: secondarColor,
                    hintText: "Write your message",
                  ),
                ),
                MeroIcons(myIcons: file, onPressed: () {}),
              ],
            ),
          ),
        ),
        MeroIcons(myIcons: micIcons, onPressed: () {}),
        MeroIcons(myIcons: camera, onPressed: () {}),
      ]),
    );
  }
}
