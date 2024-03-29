import 'package:fchats/screen/Home/widgets/page/drawer_screen.dart';
import 'package:fchats/screen/People/people_screen.dart';
import 'package:fchats/screen/Story/story_screen.dart';
import 'package:fchats/screen/appBar/app_bar.dart';
import 'package:fchats/screen/call/call.dart';
import 'package:fchats/screen/chat/chats_screen.dart';

import 'package:fchats/utils/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ChatApps extends StatefulWidget {
  const ChatApps({super.key});

  @override
  State<ChatApps> createState() => _ChatAppsState();
}

class _ChatAppsState extends State<ChatApps> {
  int _pageIndex = 0;
  final _pageController = PageController();
  _onPageChanged(int pageIndex) {
    setState(() {
      _pageIndex = pageIndex;
    });
  }

  _onTap(int page) {
    setState(() {
      _pageController.jumpToPage(page);
    });
  }

  @override
  void dispose() {
    _pageIndex = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidgets(),
      appBar: MeroAppbar(),
      body: PageView(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        children: const [
          ChatsScreen(),
          CallScreen(),
          PeopleScreen(),
          StroryScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          elevation: 12.5,
          selectedLabelStyle: const TextStyle(color: kwhite),
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageIndex,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.chat,
                  color: primaryColors,
                ),
                icon: Icon(
                  Icons.chat,
                ),
                label: "Chats"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.call,
                  color: primaryColors,
                ),
                icon: Icon(Icons.call),
                label: "Calls"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.people,
                  color: primaryColors,
                ),
                icon: Icon(
                  Icons.people,
                ),
                label: "People"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.settings,
                  color: primaryColors,
                ),
                icon: Icon(Icons.settings),
                label: "Setting")
          ]),
    );
  }
}
