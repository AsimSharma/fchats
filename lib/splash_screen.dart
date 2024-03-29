import 'dart:async';

import 'package:fchats/controller/auth_controller.dart';
import 'package:fchats/screen/Home/home_chatsApps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Get.put(AuthControlller());

    Timer(const Duration(microseconds: 10), () {
      // AuthControlller().verifyUser();

      Get.to(() => const ChatApps());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Loading......"),
        ),
      ),
    );
  }
}
