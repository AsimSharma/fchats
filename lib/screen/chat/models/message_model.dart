class MessageModels {
  MessageModels(
      {required this.messageDate,
      required this.message,
      required this.name,
      this.isSender = false});
  final bool isSender;
  final String messageDate;
  final String message;
  final String name;
}

final messagedata = [
  MessageModels(
    messageDate: "9:05 Am",
    message: "Hello ! Nazrul How are you?",
    name: "Ashim Sharma",
    isSender: true,
  ),
  MessageModels(
    messageDate: "9:05 Am",
    message: "You did your job well!",
    name: "Bibek chhetri",
  ),
  MessageModels(
    messageDate: "9:05 Am",
    message: "Hello ! Nazrul How are you?",
    name: "Ashim Sharma",
    isSender: true,
  ),
  MessageModels(
    messageDate: "9:05 Am",
    message:
        "my name is bibek chhetri iam from chitwan nepal. iam bca students  i loves to code and i work for borsoft!!!!",
    name: "Ashim Sharma",
    isSender: true,
  ),
  MessageModels(
    messageDate: "9:05 Am",
    message: "You did your job well!",
    name: "Bibek chhetri",
  ),
  MessageModels(
    messageDate: "9:05 Am",
    message: "You did your job well!",
    name: "Bibek chhetri",
  ),
  MessageModels(
    messageDate: "9:05 Am",
    message: "You did your job well!",
    name: "Bibek chhetri",
  ),
];
