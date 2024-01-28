import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';

class IncommingCalls extends StatelessWidget {
  const IncommingCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 0.0023.toResponsive(context)),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/meroprofile.jpg"))),
        child: Column(
          children: [
            Container(
                height: 0.023.h(context),
                width: 0.35.w(context),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/profile1.png")))),
            Text("Hello from incomming calls")
          ],
        ),
      )),
    );
  }
}
