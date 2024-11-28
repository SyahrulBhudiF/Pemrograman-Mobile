import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen Syahrul'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: const Text('Amber'),
                onPressed: () {
                  color = Colors.amber.shade200;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
                child: const Text('Purple'),
                onPressed: () {
                  color = Colors.purple.shade300;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
                child: const Text('Yellow'),
                onPressed: () {
                  color = Colors.blue.shade200;
                  Navigator.pop(context, color);
                }),
          ],
        ),
      ),
    );
  }
}
