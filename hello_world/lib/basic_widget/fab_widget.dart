import 'package:flutter/material.dart';

class FabCupWidget extends StatelessWidget {
  final VoidCallback onPressedAction;

  const FabCupWidget({super.key, required this.onPressedAction});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedAction,
      backgroundColor: Colors.pink,
      child: const Icon(Icons.thumb_up),
    );
  }
}