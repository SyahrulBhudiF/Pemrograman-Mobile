import 'package:flutter/material.dart';

AppBar customAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
    ),
    centerTitle: true,
  );
}