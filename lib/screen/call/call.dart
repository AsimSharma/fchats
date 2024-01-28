import 'package:fchats/screen/call/Models/calls_models.dart';
import 'package:fchats/screen/call/widgets/calls_list_tiles.dart';
import 'package:fchats/screen/widgets/shared/mero_icons.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/images_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding:
              EdgeInsets.symmetric(horizontal: 0.023.toResponsive(context)),
          child: Column(
            children: [
              SizedBox(
                height: 0.012.h(context),
              ),
              Container(
                height: 0.08.h(context),
                width: 1.0.w(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderIcon(
                      onPressed: () {},
                      height: 0.13.h(context),
                      width: 0.13.w(context),
                      myIcons: serachicons,
                    ),
                    Text(
                      "Calls",
                      style: GoogleFonts.lato(
                          fontSize: 0.05.w(context),
                          color: context.theme.splashColor,
                          fontWeight: FontWeight.w700),
                    ),
                    BorderIcon(
                      onPressed: () {},
                      height: 0.13.h(context),
                      width: 0.13.w(context),
                      myIcons: callusers2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.012.h(context),
              ),
              Container(
                height: 0.71.h(context),
                width: 1.0.w(context),
                child: ListView.builder(
                    itemCount: callsdemo.length,
                    itemBuilder: (context, index) {
                      return CallsListItems(
                        index: index,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
