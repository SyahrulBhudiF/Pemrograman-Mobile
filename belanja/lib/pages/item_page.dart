import 'package:belanja/widgets/app_bar.dart';
import 'package:belanja/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item itemArgs;
  const ItemPage({super.key, required this.itemArgs});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(itemArgs.name),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Hero(
              tag: itemArgs.image,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(itemArgs.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  itemArgs.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                ...Iterable.generate(
                  5,
                  (index) {
                    return Icon(
                      Icons.star,
                      color: index < itemArgs.rating ? Colors.yellow : Colors.black12,
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 8),
            Text('Rp ${itemArgs.price.toString()}'),
            const SizedBox(height: 8),
            Text(
              '${itemArgs.stok.toString()} items left',
              style: TextStyle(
                color: itemArgs.stok < 3 ? Colors.red : null,
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}