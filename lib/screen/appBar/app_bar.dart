import 'package:fchats/controller/theme_controller.dart';
import 'package:fchats/screen/Home/widgets/page/drawer_screen.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeroAppbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize; // Add this line

  MeroAppbar({
    super.key,
    double? preferredSize,
  }) : preferredSize = Size.fromHeight(preferredSize ?? kToolbarHeight);
  @override
  State<MeroAppbar> createState() => _MeroAppbarState();
}

class _MeroAppbarState extends State<MeroAppbar> {
  final themeCtl = Get.put(ThemeCtrl());
  @override
  void initState() {
    super.initState();
  }

  // Assign the value here
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(0.1.h(context), 1.0.w(context)),
      child: AppBar(
        // leading: IconButton(
        //     onPressed: () {
        //       Get.to(() => const DrawerWidgets());
        //     },
        //     icon: const Icon(Icons.menu)),
        title: const Text("fChats"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
    );
  }
}
