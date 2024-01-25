import 'package:fchats/screen/chat/models/friends_chat_model.dart';
import 'package:fchats/screen/chat/models/message_model.dart';
import 'package:fchats/screen/chat/widget/message_appbar.dart';
import 'package:fchats/screen/chat/widget/message_bottom_navigations.dart';
import 'package:fchats/screen/chat/widget/message_tile.dart';
import 'package:fchats/utils/extension/responsive.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MessageBottomNavigations(),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 0.013.toResponsive(context)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appBars
              MessageAppBar(index: index),

              SizedBox(
                height: 0.74.h(context),
                width: 1.0.w(context),
                child: ListView.builder(
                    itemCount: messagedata.length,
                    itemBuilder: ((context, index) {
                      return MessageTile(
                        isSender: messagedata[index].isSender,
                        message: messagedata[index].message,
                        messageDate: messagedata[index].messageDate,
                        profilePP: friendschatslist[index].friendsPP,
                      );
                    })),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
