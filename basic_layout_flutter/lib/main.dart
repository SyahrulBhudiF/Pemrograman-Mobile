import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Pindahkan deklarasi icon dan icon size ke dalam build()
    final Icon starStyle = Icon(
      Icons.star,
      size: 10,
      color: Colors.grey[700],
    );

    final double iconSize = 15.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      const MyContainer(
                        child: Text("Strawberry Pavlova"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const MyContainer(
                        child: Text(
                          "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova."
                          "Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MyContainer(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                for (int i = 0; i < 5; i++) starStyle,
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "170 Reviews",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MyContainer(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.kitchen_outlined,
                                    color: Colors.green[300],
                                    size: iconSize,
                                  ),
                                  const Text("PREP:"),
                                  const Text("25 min"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Colors.green[300],
                                    size: iconSize,
                                  ),
                                  const Text("COOK:"),
                                  const Text("1 hr"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.restaurant_outlined,
                                    color: Colors.green[300],
                                    size: iconSize,
                                  ),
                                  const Text("FEEDS:"),
                                  const Text("4 - 6"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/cake.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Widget child;

  const MyContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
