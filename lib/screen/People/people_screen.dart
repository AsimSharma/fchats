import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [Text("PeopleScreen")],
        ),
      ),
    );
  }
}
