import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StroryScreen extends StatelessWidget {
  const StroryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String copy = "Copy Me";
    final key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Tooltip(message: "Long press to copy", child: Text(copy)),
              onLongPress: () {
                Clipboard.setData(ClipboardData(text: copy));
              },
            ),

            SizedBox(
              height: 100,
            ),
            const Tooltip(
              message: "Hello every one ",
              child: Text("Helooo"),
            ),
            // const TextField(
            //     decoration: InputDecoration(hintText: "Paste Here")),
          ]),
    );
  }
}
