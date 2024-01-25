import 'package:fchats/controller/theme_controller.dart';
import 'package:fchats/screen/Home/widgets/page/widgets/drawer_header.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidgets extends StatefulWidget {
  const DrawerWidgets({
    super.key,
  });

  @override
  State<DrawerWidgets> createState() => _DrawerWidgetsState();
}

class _DrawerWidgetsState extends State<DrawerWidgets> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final ThemeCtrl controller = Get.put(ThemeCtrl());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: context.theme.scaffoldBackgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 0.01.toResponsive(context)),
          height: 0.5.h(context),
          width: 0.5.w(context),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [DrawerHeaders(auth: _auth)]),
        ),
      ),
    );
  }
}
