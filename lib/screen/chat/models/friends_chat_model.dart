import 'package:fchats/utils/styles/images_links.dart';

class FriendsChatModels {
  FriendsChatModels({
    required this.friendsName,
    required this.friendsPP,
    required this.lastMessage,
    required this.messagedate,
    this.activeStatus = true,
  });

  final String friendsName, friendsPP, lastMessage;
  //change with date and Time
  final String messagedate;
  final bool activeStatus;
}

final friendschatslist = [
  FriendsChatModels(
      friendsName: "Rajesh Hamal",
      friendsPP: friends1,
      lastMessage: "voli vetumla",
      messagedate: "Tue"),
  FriendsChatModels(
      friendsName: "Kushum ghimire",
      friendsPP: friends2,
      lastMessage: "good nignt",
      messagedate: "wed"),
  FriendsChatModels(
      friendsName: "Aashis thapa",
      friendsPP: friends3,
      lastMessage: "phone gara malai",
      messagedate: "today",
      activeStatus: false),
  FriendsChatModels(
      friendsName: "Asim Sharma",
      friendsPP: friends4,
      lastMessage: "laptop laideyou",
      messagedate: "today"),
  FriendsChatModels(
    friendsName: "supriya kdk",
    friendsPP: friends2,
    lastMessage: "voli vetumla",
    messagedate: "Tue",
    activeStatus: false,
  ),
  FriendsChatModels(
      friendsName: "Lokendra sharma",
      friendsPP: friends3,
      lastMessage: "katibel aayouxas",
      messagedate: "today",
      activeStatus: false),
  FriendsChatModels(
      friendsName: "Santosh poudel",
      friendsPP: friends4,
      lastMessage: "khai tw vaya",
      messagedate: "thus"),
];
