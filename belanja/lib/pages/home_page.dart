import 'package:belanja/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/item.dart';
import '../widgets/bottom_app_bar.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        image:
            'https://lirp.cdn-website.com/cbf48001/dms3rep/multi/opt/shutterstock_2463705563-640w.jpg',
        rating: 4,
        stok: 1,
      ),
      Item(
        name: 'Salt',
        price: 2000,
        image:
            'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/1/28/1390910850413/Sea-salt---how-do-you-get-011.jpg?width=465&dpr=1&s=none',
        rating: 3,
        stok: 0,
      ),
      Item(
        name: 'Black Pepper',
        price: 7000,
        image:
            'https://organicmandya.com/cdn/shop/files/Blackpepperpowder_f2dc63da-da83-48be-ac0a-da243fd2ad3a.jpg?v=1718778111&width=1024',
        rating: 5,
        stok: 5,
      ),
      Item(
        name: 'Ketchup',
        price: 10000,
        image:
            'https://images-cdn.ubuy.com.sa/640217185620ec28166b68d3-heinz-tomato-ketchup-with-a-blend-of.jpg',
        rating: 2,
        stok: 2,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar('Belanja'),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () => context.push('/item', extra: item),
                child: ItemCard(item: item),
              );
            },
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}