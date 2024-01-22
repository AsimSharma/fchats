import 'package:fchats/controller/theme_controller.dart';
import 'package:fchats/utils/extension/responsive.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidgets extends StatelessWidget {
  const DrawerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeCtrl controller = Get.put(ThemeCtrl());
    return Drawer(
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        height: 0.5.h(context),
        width: 0.5.w(context),
        child: Column(children: [
          Text("Helooo"),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tap on the switch to change the Theme",
                    style: context.theme.textTheme.bodyLarge),
                Obx(
                  () => Switch(
                    value: controller.currentTheme.value == ThemeMode.dark,
                    onChanged: (value) {
                      controller.switchTheme();
                      Get.changeThemeMode(controller.currentTheme.value);
                    },
                    activeColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
