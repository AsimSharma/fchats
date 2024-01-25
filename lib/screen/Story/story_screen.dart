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
          children: <Widget>[Text("")]),
    );
  }
}
