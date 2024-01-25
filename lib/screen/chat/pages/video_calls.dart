import 'package:fchats/screen/widgets/shared/back_app_bar.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 0.023.toResponsive(context),
          ),
          child: Column(children: [
            BackAppBar(onPressed: () {
              Get.back();
            }),
            const Text("VideoCallScreenooo")
          ]),
        ),
      ),
    );
  }
}
