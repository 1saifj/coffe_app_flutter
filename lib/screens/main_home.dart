import 'package:epos/widgets/bevereges_widget.dart';
import 'package:epos/widgets/foods_widget.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                top: 16,
                right: 16,
                left: 16,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Good Morning',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Saif Ali',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(Icons.mail_outline),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          image: const DecorationImage(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2017/04/19/13/03/coffee-2242213_960_720.jpg',
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 24),
                              const Text(
                                'share happiness',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'buy 1 get 1',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'Find out more',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(height: 10),
                      const BevergesWidget(),
                      const SizedBox(height: 10),
                      const FoodsWidget()
                    ],
                  ),
                )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 72,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.store_outlined),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.wallet_outlined),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.wallet_giftcard_outlined),
                        color: Colors.grey,
                      ),
                      const CircleAvatar(
                        radius: 16,
                      )
                    ],
                  ),
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
        ),
      ),
    );
  }
}
