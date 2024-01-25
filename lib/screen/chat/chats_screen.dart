import 'package:fchats/controller/auth_controller.dart';
import 'package:fchats/controller/users_controller.dart';
import 'package:fchats/screen/chat/models/friends_chat_model.dart';
import 'package:fchats/screen/chat/pages/message_screen.dart';
import 'package:fchats/screen/chat/widget/friends_message_tile.dart';
import 'package:fchats/screen/chat/widget/my_pp_stack.dart';
import 'package:fchats/screen/chat/widget/profile_stack.dart';
import 'package:fchats/screen/widgets/shared/search_bar.dart';
import 'package:fchats/utils/extension/responsive.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final usersCtrl = Get.put(UserController());
  final authController = Get.find<AuthControlller>();
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    // log(usersCtrl.usersList[0].uid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 0.01.toResponsive(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.01.h(context),
              ),
              SearchBarContainer(
                onChangeValue: (value) {},
                hintText: "Search",
              ),
              SizedBox(
                height: 0.008.h(context),
              ),
              SizedBox(
                height: 0.135.h(context),
                width: 1.0.w(context),
                // color: Colors.red,
                child: Row(
                  children: [
                    MyProfileStack(auth: auth),
                    Expanded(
                      child: SizedBox(
                        height: 0.12.h(context),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: friendschatslist.length,
                          itemBuilder: (context, index) {
                            return FriendsProfileStack(index: index);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 0.008.h(context),
              ),

              //FriendsMessageListTile
              SizedBox(
                height: 0.57.h(context),
                width: 1.0.w(context),
                child: ListView.builder(
                    itemCount: friendschatslist.length,
                    itemBuilder: (context, index) {
                      return FriendsMessageListTile(
                        onPressed: () {
                          Get.to(() => MessageScreen(index: index));
                        },
                        friendsName: friendschatslist[index].friendsName,
                        lastMessage: friendschatslist[index].lastMessage,
                        activeStatus: friendschatslist[index].activeStatus,
                        messagedate: friendschatslist[index].messagedate,
                        friendsPP: friendschatslist[index].friendsPP,
                        index: index,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
