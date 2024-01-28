import 'package:fchats/utils/styles/images_links.dart';

enum CallType { incomming, outgoing, disconnect }

class CallsModels {
  CallsModels({
    required this.friendspp,
    required this.callsDay,
    required this.callsIime,
    required this.callsTypes,
    required this.friendsName,
  });
  final String friendspp, friendsName, callsDay, callsIime;
  final CallType callsTypes;
}

final callsdemo = [
  CallsModels(
      friendspp: friends1,
      callsDay: "Today",
      callsIime: "9:10 Am",
      callsTypes: CallType.incomming,
      friendsName: "ashim sharma"),
  CallsModels(
    friendspp: friends5,
    callsDay: "sat",
    callsIime: "10:10 Pm",
    callsTypes: CallType.outgoing,
    friendsName: "aashis thapa",
  ),
  CallsModels(
    friendspp: friends3,
    callsDay: "Today",
    callsIime: "9:10 Am",
    callsTypes: CallType.incomming,
    friendsName: "Lokendra sharma",
  ),
  CallsModels(
      friendspp: friends2,
      callsDay: "Today",
      callsIime: "6:30 Am",
      callsTypes: CallType.incomming,
      friendsName: "anusha chhetir"),
  CallsModels(
      friendspp: friends5,
      callsDay: "Today",
      callsIime: "9:10 Am",
      callsTypes: CallType.disconnect,
      friendsName: "ashim sharma"),
  CallsModels(
    friendspp: friends6,
    callsDay: "sat",
    callsIime: "10:10 Pm",
    callsTypes: CallType.outgoing,
    friendsName: "aashis thapa",
  ),
  CallsModels(
      friendspp: friends1,
      callsDay: "Today",
      callsIime: "9:10 Am",
      callsTypes: CallType.disconnect,
      friendsName: "ashim sharma"),
  CallsModels(
    friendspp: friends5,
    callsDay: "sat",
    callsIime: "10:10 Pm",
    callsTypes: CallType.disconnect,
    friendsName: "aashis thapa",
  ),
  CallsModels(
      friendspp: friends1,
      callsDay: "Today",
      callsIime: "9:10 Am",
      callsTypes: CallType.incomming,
      friendsName: "ashim sharma"),
  CallsModels(
    friendspp: friends5,
    callsDay: "sat",
    callsIime: "10:10 Pm",
    callsTypes: CallType.disconnect,
    friendsName: "aashis thapa",
  ),
];
