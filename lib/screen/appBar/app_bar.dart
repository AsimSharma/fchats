import 'package:fchats/controller/theme_controller.dart';
import 'package:fchats/screen/Home/widgets/drawer.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize; // Add this line

  Appbar({
    super.key,
    double? preferredSize,
  }) : preferredSize = Size.fromHeight(preferredSize ?? kToolbarHeight);
  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
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
        leading: Stack(
          children: [
            IconButton(
                onPressed: () {
                  Get.to(() => const DrawerWidgets());
                },
                icon: const Icon(Icons.menu)),
            Positioned(
                top: -5,
                right: 10,
                child: Container(
                    constraints: BoxConstraints(
                        minHeight: 0.05.h(context), minWidth: 0.06.w(context)),
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: kwhite),
                      ),
                    )))
          ],
        ),
        title: const Text("fChats"),
        actions: [
          Obx(
            () => Switch(
              value: themeCtl.currentTheme.value == ThemeMode.dark,
              onChanged: (value) {
                themeCtl.switchTheme();
                Get.changeThemeMode(themeCtl.currentTheme.value);
              },
              activeColor: Colors.white,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
        ],
      ),
    );
  }
}
