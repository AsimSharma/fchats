import 'package:fchats/screen/chat/widget/message_appbar.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 0.013.toResponsive(context)),
        child: Column(
          children: [MessageAppBar(index: index)],
        ),
      )),
    );
  }
}

class MeroIcons extends StatelessWidget {
  const MeroIcons({
    super.key,
    required this.myIcons,
    required this.onPressed,
  });

  final String myIcons;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 0.05.h(context),
        width: 0.1.w(context),
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(myIcons))),
      ),
    );
  }
}
