import 'package:flutter/material.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_back)),
      ],
    );
  }
}
