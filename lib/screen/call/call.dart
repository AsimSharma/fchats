import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackAppBar(onPressed: () {
              Get.back();
            }),
            Text("this isCallScreen ")
          ],
        ),
      ),
    );
  }
}
