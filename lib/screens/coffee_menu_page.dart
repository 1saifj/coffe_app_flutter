import 'package:epos/models/menu_item.dart';
import 'package:epos/screens/drink_order_page.dart';
import 'package:flutter/material.dart';

class CoffeeMenuPage extends StatefulWidget {
  const CoffeeMenuPage({Key? key}) : super(key: key);

  @override
  State<CoffeeMenuPage> createState() => _CoffeeMenuPageState();
}

class _CoffeeMenuPageState extends State<CoffeeMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 24,
              child: Column(
                children: [
                  Container(
                    height: 42,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          child: const Center(
                            child: Text('Food'),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent[100],
                              borderRadius: BorderRadius.circular(23)),
                          child: const Center(
                            child: Text('Drink'),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                    height: 58,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                            width: 160,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color:
                                  index == 0 ? Colors.black : Colors.grey[200],
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 24,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Signatured',
                                    style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 0.7,
                        children: coffeeMenuItems
                            .map(
                              (item) => GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DrinkOrderPage(
                                            menuItem: item,
                                          )));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(item.img ?? ""),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: 8,
                                        top: 8,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Text(
                                            "\$ ${item.price}",
                                            style: const TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 16,
                                        bottom: 16,
                                        right: 0,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(right: 24),
                                          child: Text(
                                            "${item.title}",
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
            right: 16,
            bottom: 84,
            child: SizedBox(
                height: 58,
                width: 58,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red[200],
                        foregroundColor: Colors.black,
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                        ),
                      ),
                    ),
                    const Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Text('3'),
                        )),
                  ],
                )),
          )
        ],
      )),
    );
  }
}
