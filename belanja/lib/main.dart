import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) {
              return const HomePage();
            },
          ),
          GoRoute(
            path: '/item',
            builder: (context, state) {
              final item = state.extra as Item;
              return ItemPage(itemArgs: item);
            },
          ),
        ],
      ),
    ),
  );
}
