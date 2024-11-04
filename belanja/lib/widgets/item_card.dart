import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Hero(
              tag: item.image,
              child: Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(item.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              '${item.stok.toString()} items left',
              style: TextStyle(
                fontSize: 12,
                color: item.stok < 3 ? Colors.red : null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              item.name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              'Rp ${item.price.toString()}',
            ),
          ),
        ],
      ),
    );
  }
}